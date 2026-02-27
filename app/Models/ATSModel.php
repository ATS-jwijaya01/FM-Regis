<?php

namespace App\Models;

use App\Enums\DatatableEnums;
use Exception;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Query\Builder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

abstract class ATSModel extends Model
{
    use HasFactory;
    protected $table;
    protected $primaryKey;
    protected $fillable;

    // the preparation -- please customize $tableParameter is needed prior calling parent::getDataTable
    public static function prepareDataTable($tableParameter, $table)
    {
        try {
            $search = null;
            if (array_key_exists("search", $tableParameter)) {
                $search = $tableParameter["search"];
            }

            $filterColumn = null;
            if (array_key_exists("filterColumn", $tableParameter)) {
                $filterColumn = $tableParameter["filterColumn"];
            }

            $orderDir = null;
            if (array_key_exists("orderDir", $tableParameter)) {
                $orderDir = $tableParameter["orderDir"];
            }

            $length = null;
            if (array_key_exists("length", $tableParameter)) {
                $length = intval($tableParameter["length"]);
            }

            $start = null;
            if (array_key_exists("start", $tableParameter)) {
                $start = intval($tableParameter["start"]);
            }

            $selectColumn = ["*"];
            if (array_key_exists("selectColumn", $tableParameter)) {
                $selectColumn = $tableParameter["selectColumn"];
            }

            $selectRaw = null;
            if (array_key_exists("selectRaw", $tableParameter)) {
                $selectRaw = $tableParameter["selectRaw"];
            }

            $customFilter = null;
            if (array_key_exists("customFilter", $tableParameter)) {
                $customFilter = $tableParameter["customFilter"];
            }

            $orderColumn = null;
            if (array_key_exists("orderColumn", $tableParameter)) {
                if (is_numeric($tableParameter["orderColumn"])) {
                    $index = intval($tableParameter["orderColumn"]);
                    $orderColumn = $selectColumn[$index];
                } else {
                    $orderColumn = $tableParameter["orderColumn"];
                }
            }

            $data = self::datatable(
                $selectColumn,
                $table,
                $search,
                $filterColumn,
                $orderDir,
                $orderColumn,
                $length,
                $start,
                $customFilter,
                $selectRaw
            );

            return array(
                "filteredData" => $data["filteredData"],
                "allData" => $data["allData"],
                "data" => $data["data"]
            );
        } catch (Exception $e) {
            return array(
                "status" => false,
                "message" => $e->getMessage()
            );
        }
    }

    public static function datatable(
        array $selectColumn,
        $table,
        ?string $search = null,
        ?array $searchColumn = null,
        ?string $orderDir = null,
        ?string $orderColumn = null,
        ?int $length = null,
        ?int $start = null,
        ?array $customFilter = null,
        ?string $selectRaw = null,
    ): array {
        $query = DB::table($table);

        if($selectRaw){
            $query->selectRaw($selectRaw);
        }else{
            $query->select($selectColumn);
        }

        if (isset($customFilter) && count($customFilter) > 0) { //unique & mandatory filter
            foreach ($customFilter as $where) {
                if (is_array($where)) {
                    $query->where(...$where);
                } else {
                    $query->whereRaw($where);
                }
            }
        }

        $allData = (clone $query)->count();

        if ($searchColumn && count($searchColumn) > 0 && isset($search)) {  //unique & search filter
            $query->where(function (Builder $query) use ($searchColumn, $search) {
                foreach ($searchColumn as $columnName) {
                    $query->orWhere($columnName, "like", "%" . $search . "%");
                }
            });
        }

        $orderDir = in_array($orderDir, DatatableEnums::ORDER_BY_OPTIONS) ? $orderDir : DatatableEnums::DEFAULT_ORDER_DIRECTION;
        if (
            //ensure orderColumn is not null
            isset($orderColumn) &&

            //ensure orderColumn is not empty string
            $orderColumn !== ""
        ) {
            $query->orderBy($orderColumn, $orderDir);
        }

        $filteredData = (clone $query)->count();

        $query->limit(DatatableEnums::DEFAULT_DATA_LENGTH);
        if (isset($length) && $length > 0) { //(limit) minimum select 10 data
            $query->limit($length);
        }

        $query->offset(DatatableEnums::DEFAULT_DATA_OFFSET);
        if (isset($start) && $start > 0) { //page offset
            $query->offset($start);
        }
        
        $result = $query->get()->toArray();
        // dd($query->toRawSql());
        return array(
            "allData" => $allData,
            "filteredData" => $filteredData,
            "data" => $result
        );
    }
}
