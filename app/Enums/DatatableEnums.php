<?php

namespace App\Enums;

class DatatableEnums {
    const ASCENDING = "asc";
    const DESCENDING = "desc";

    const ORDER_BY_OPTIONS = array(
        self::ASCENDING,
        self::DESCENDING,
    );

    const DEFAULT_DATA_LENGTH = 10;
    const DEFAULT_DATA_OFFSET = 0;
    const DEFAULT_ORDER_DIRECTION = "desc";
  
}