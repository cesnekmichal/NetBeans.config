--SELECT params.unique_name, lpad(digest(params.unique_name,'md5'),16,'0')::bit(64)::bigint from params;
--SELECT colesce(md5(params.unique_name), ' ') from params
--SELECT sum(ln(abs(hex_to_bigint(digest(params.type_byte_array::text,'md5'))))) FROM params
SELECT sum(ln(abs(hex_to_bigint(md5(params.type_integer::text))))) FROM params;