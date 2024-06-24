let __version__ = "0.0.1"

module StringMap = Map.Make(String)

type sbsv_type =
  SBSV_NULL
  | SBSV_BOOL of bool
  | SBSV_INT of int
  | SBSV_FLOAT of float
  | SBSV_STRING of string

type sbsv_data = {
  schema_name: string;
  id: int;
  data: sbsv_type StringMap.t;
}

type sbsv_schema_type = {
  name: string;
  name_with_tag: string;
  schema_type: sbsv_type;
  nullable: bool;
}

type sbsv_schema = {
  original: string;
  name: string;
  schema: sbsv_type list;
  data: sbsv_data list;
}

type sbsv_parser = {
  schema: sbsv_schema StringMap.t;
  ignore_unknown: bool;
}

