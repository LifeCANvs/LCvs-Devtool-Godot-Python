# cython: language_level=3

from libc.stdint cimport uint8_t, uint64_t, int64_t, uint32_t
from libc.stddef cimport wchar_t


cdef extern from "gdnative_api_struct.gen.h":

    ctypedef enum godot_error:
        GODOT_OK
        GODOT_FAILED
        GODOT_ERR_UNAVAILABLE
        GODOT_ERR_UNCONFIGURED
        GODOT_ERR_UNAUTHORIZED
        GODOT_ERR_PARAMETER_RANGE_ERROR
        GODOT_ERR_OUT_OF_MEMORY
        GODOT_ERR_FILE_NOT_FOUND
        GODOT_ERR_FILE_BAD_DRIVE
        GODOT_ERR_FILE_BAD_PATH
        GODOT_ERR_FILE_NO_PERMISSION
        GODOT_ERR_FILE_ALREADY_IN_USE
        GODOT_ERR_FILE_CANT_OPEN
        GODOT_ERR_FILE_CANT_WRITE
        GODOT_ERR_FILE_CANT_READ
        GODOT_ERR_FILE_UNRECOGNIZED
        GODOT_ERR_FILE_CORRUPT
        GODOT_ERR_FILE_MISSING_DEPENDENCIES
        GODOT_ERR_FILE_EOF
        GODOT_ERR_CANT_OPEN
        GODOT_ERR_CANT_CREATE
        GODOT_ERR_QUERY_FAILED
        GODOT_ERR_ALREADY_IN_USE
        GODOT_ERR_LOCKED
        GODOT_ERR_TIMEOUT
        GODOT_ERR_CANT_CONNECT
        GODOT_ERR_CANT_RESOLVE
        GODOT_ERR_CONNECTION_ERROR
        GODOT_ERR_CANT_ACQUIRE_RESOURCE
        GODOT_ERR_CANT_FORK
        GODOT_ERR_INVALID_DATA
        GODOT_ERR_INVALID_PARAMETER
        GODOT_ERR_ALREADY_EXISTS
        GODOT_ERR_DOES_NOT_EXIST
        GODOT_ERR_DATABASE_CANT_READ
        GODOT_ERR_DATABASE_CANT_WRITE
        GODOT_ERR_COMPILATION_FAILED
        GODOT_ERR_METHOD_NOT_FOUND
        GODOT_ERR_LINK_FAILED
        GODOT_ERR_SCRIPT_FAILED
        GODOT_ERR_CYCLIC_LINK
        GODOT_ERR_INVALID_DECLARATION
        GODOT_ERR_DUPLICATE_SYMBOL
        GODOT_ERR_PARSE_ERROR
        GODOT_ERR_BUSY
        GODOT_ERR_SKIP
        GODOT_ERR_HELP
        GODOT_ERR_BUG
        GODOT_ERR_PRINTER_ON_FIRE

    ctypedef bint bool

    ctypedef bool godot_bool

    ctypedef int godot_int

    ctypedef float godot_real

    ctypedef void godot_object

    ctypedef wchar_t godot_char_type

    ctypedef struct godot_string:
        pass

    ctypedef struct godot_char_string:
        pass

    ctypedef struct godot_array:
        pass

    ctypedef struct godot_pool_array_read_access:
        pass

    ctypedef godot_pool_array_read_access godot_pool_byte_array_read_access

    ctypedef godot_pool_array_read_access godot_pool_int_array_read_access

    ctypedef godot_pool_array_read_access godot_pool_real_array_read_access

    ctypedef godot_pool_array_read_access godot_pool_string_array_read_access

    ctypedef godot_pool_array_read_access godot_pool_vector2_array_read_access

    ctypedef godot_pool_array_read_access godot_pool_vector3_array_read_access

    ctypedef godot_pool_array_read_access godot_pool_color_array_read_access

    ctypedef struct godot_pool_array_write_access:
        pass

    ctypedef godot_pool_array_write_access godot_pool_byte_array_write_access

    ctypedef godot_pool_array_write_access godot_pool_int_array_write_access

    ctypedef godot_pool_array_write_access godot_pool_real_array_write_access

    ctypedef godot_pool_array_write_access godot_pool_string_array_write_access

    ctypedef godot_pool_array_write_access godot_pool_vector2_array_write_access

    ctypedef godot_pool_array_write_access godot_pool_vector3_array_write_access

    ctypedef godot_pool_array_write_access godot_pool_color_array_write_access

    ctypedef struct godot_pool_byte_array:
        pass

    ctypedef struct godot_pool_int_array:
        pass

    ctypedef struct godot_pool_real_array:
        pass

    ctypedef struct godot_pool_string_array:
        pass

    ctypedef struct godot_pool_vector2_array:
        pass

    ctypedef struct godot_pool_vector3_array:
        pass

    ctypedef struct godot_pool_color_array:
        pass

    ctypedef struct godot_color:
        pass

    void godot_color_new_rgba(godot_color* r_dest, godot_real p_r, godot_real p_g, godot_real p_b, godot_real p_a)

    void godot_color_new_rgb(godot_color* r_dest, godot_real p_r, godot_real p_g, godot_real p_b)

    godot_real godot_color_get_r(godot_color* p_self)

    void godot_color_set_r(godot_color* p_self, godot_real r)

    godot_real godot_color_get_g(godot_color* p_self)

    void godot_color_set_g(godot_color* p_self, godot_real g)

    godot_real godot_color_get_b(godot_color* p_self)

    void godot_color_set_b(godot_color* p_self, godot_real b)

    godot_real godot_color_get_a(godot_color* p_self)

    void godot_color_set_a(godot_color* p_self, godot_real a)

    godot_real godot_color_get_h(godot_color* p_self)

    godot_real godot_color_get_s(godot_color* p_self)

    godot_real godot_color_get_v(godot_color* p_self)

    godot_string godot_color_as_string(godot_color* p_self)

    godot_int godot_color_to_rgba32(godot_color* p_self)

    godot_int godot_color_to_abgr32(godot_color* p_self)

    godot_int godot_color_to_abgr64(godot_color* p_self)

    godot_int godot_color_to_argb64(godot_color* p_self)

    godot_int godot_color_to_rgba64(godot_color* p_self)

    godot_int godot_color_to_argb32(godot_color* p_self)

    godot_real godot_color_gray(godot_color* p_self)

    godot_color godot_color_inverted(godot_color* p_self)

    godot_color godot_color_contrasted(godot_color* p_self)

    godot_color godot_color_linear_interpolate(godot_color* p_self, godot_color* p_b, godot_real p_t)

    godot_color godot_color_blend(godot_color* p_self, godot_color* p_over)

    godot_color godot_color_darkened(godot_color* p_self, godot_real p_amount)

    godot_color godot_color_from_hsv(godot_color* p_self, godot_real p_h, godot_real p_s, godot_real p_v, godot_real p_a)

    godot_color godot_color_lightened(godot_color* p_self, godot_real p_amount)

    godot_string godot_color_to_html(godot_color* p_self, godot_bool p_with_alpha)

    godot_bool godot_color_operator_equal(godot_color* p_self, godot_color* p_b)

    godot_bool godot_color_operator_less(godot_color* p_self, godot_color* p_b)

    ctypedef struct godot_vector2:
        pass

    void godot_vector2_new(godot_vector2* r_dest, godot_real p_x, godot_real p_y)

    godot_string godot_vector2_as_string(godot_vector2* p_self)

    godot_vector2 godot_vector2_normalized(godot_vector2* p_self)

    godot_real godot_vector2_length(godot_vector2* p_self)

    godot_real godot_vector2_angle(godot_vector2* p_self)

    godot_real godot_vector2_length_squared(godot_vector2* p_self)

    godot_bool godot_vector2_is_normalized(godot_vector2* p_self)

    godot_real godot_vector2_distance_to(godot_vector2* p_self, godot_vector2* p_to)

    godot_real godot_vector2_distance_squared_to(godot_vector2* p_self, godot_vector2* p_to)

    godot_real godot_vector2_angle_to(godot_vector2* p_self, godot_vector2* p_to)

    godot_real godot_vector2_angle_to_point(godot_vector2* p_self, godot_vector2* p_to)

    godot_vector2 godot_vector2_linear_interpolate(godot_vector2* p_self, godot_vector2* p_b, godot_real p_t)

    godot_vector2 godot_vector2_cubic_interpolate(godot_vector2* p_self, godot_vector2* p_b, godot_vector2* p_pre_a, godot_vector2* p_post_b, godot_real p_t)

    godot_vector2 godot_vector2_rotated(godot_vector2* p_self, godot_real p_phi)

    godot_vector2 godot_vector2_tangent(godot_vector2* p_self)

    godot_vector2 godot_vector2_floor(godot_vector2* p_self)

    godot_vector2 godot_vector2_snapped(godot_vector2* p_self, godot_vector2* p_by)

    godot_real godot_vector2_aspect(godot_vector2* p_self)

    godot_real godot_vector2_dot(godot_vector2* p_self, godot_vector2* p_with)

    godot_vector2 godot_vector2_slide(godot_vector2* p_self, godot_vector2* p_n)

    godot_vector2 godot_vector2_bounce(godot_vector2* p_self, godot_vector2* p_n)

    godot_vector2 godot_vector2_reflect(godot_vector2* p_self, godot_vector2* p_n)

    godot_vector2 godot_vector2_abs(godot_vector2* p_self)

    godot_vector2 godot_vector2_clamped(godot_vector2* p_self, godot_real p_length)

    godot_vector2 godot_vector2_operator_add(godot_vector2* p_self, godot_vector2* p_b)

    godot_vector2 godot_vector2_operator_subtract(godot_vector2* p_self, godot_vector2* p_b)

    godot_vector2 godot_vector2_operator_multiply_vector(godot_vector2* p_self, godot_vector2* p_b)

    godot_vector2 godot_vector2_operator_multiply_scalar(godot_vector2* p_self, godot_real p_b)

    godot_vector2 godot_vector2_operator_divide_vector(godot_vector2* p_self, godot_vector2* p_b)

    godot_vector2 godot_vector2_operator_divide_scalar(godot_vector2* p_self, godot_real p_b)

    godot_bool godot_vector2_operator_equal(godot_vector2* p_self, godot_vector2* p_b)

    godot_bool godot_vector2_operator_less(godot_vector2* p_self, godot_vector2* p_b)

    godot_vector2 godot_vector2_operator_neg(godot_vector2* p_self)

    void godot_vector2_set_x(godot_vector2* p_self, godot_real p_x)

    void godot_vector2_set_y(godot_vector2* p_self, godot_real p_y)

    godot_real godot_vector2_get_x(godot_vector2* p_self)

    godot_real godot_vector2_get_y(godot_vector2* p_self)

    ctypedef struct godot_vector3:
        pass

    ctypedef struct godot_basis:
        pass

    ctypedef struct godot_quat:
        pass

    void godot_quat_new(godot_quat* r_dest, godot_real p_x, godot_real p_y, godot_real p_z, godot_real p_w)

    void godot_quat_new_with_axis_angle(godot_quat* r_dest, godot_vector3* p_axis, godot_real p_angle)

    void godot_quat_new_with_basis(godot_quat* r_dest, godot_basis* p_basis)

    void godot_quat_new_with_euler(godot_quat* r_dest, godot_vector3* p_euler)

    godot_real godot_quat_get_x(godot_quat* p_self)

    void godot_quat_set_x(godot_quat* p_self, godot_real val)

    godot_real godot_quat_get_y(godot_quat* p_self)

    void godot_quat_set_y(godot_quat* p_self, godot_real val)

    godot_real godot_quat_get_z(godot_quat* p_self)

    void godot_quat_set_z(godot_quat* p_self, godot_real val)

    godot_real godot_quat_get_w(godot_quat* p_self)

    void godot_quat_set_w(godot_quat* p_self, godot_real val)

    godot_string godot_quat_as_string(godot_quat* p_self)

    godot_real godot_quat_length(godot_quat* p_self)

    godot_real godot_quat_length_squared(godot_quat* p_self)

    godot_quat godot_quat_normalized(godot_quat* p_self)

    godot_bool godot_quat_is_normalized(godot_quat* p_self)

    godot_quat godot_quat_inverse(godot_quat* p_self)

    godot_real godot_quat_dot(godot_quat* p_self, godot_quat* p_b)

    godot_vector3 godot_quat_xform(godot_quat* p_self, godot_vector3* p_v)

    godot_quat godot_quat_slerp(godot_quat* p_self, godot_quat* p_b, godot_real p_t)

    godot_quat godot_quat_slerpni(godot_quat* p_self, godot_quat* p_b, godot_real p_t)

    godot_quat godot_quat_cubic_slerp(godot_quat* p_self, godot_quat* p_b, godot_quat* p_pre_a, godot_quat* p_post_b, godot_real p_t)

    godot_quat godot_quat_operator_multiply(godot_quat* p_self, godot_real p_b)

    godot_quat godot_quat_operator_add(godot_quat* p_self, godot_quat* p_b)

    godot_quat godot_quat_operator_subtract(godot_quat* p_self, godot_quat* p_b)

    godot_quat godot_quat_operator_divide(godot_quat* p_self, godot_real p_b)

    godot_bool godot_quat_operator_equal(godot_quat* p_self, godot_quat* p_b)

    godot_quat godot_quat_operator_neg(godot_quat* p_self)

    void godot_quat_set_axis_angle(godot_quat* p_self, godot_vector3* p_axis, godot_real p_angle)

    void godot_basis_new_with_rows(godot_basis* r_dest, godot_vector3* p_x_axis, godot_vector3* p_y_axis, godot_vector3* p_z_axis)

    void godot_basis_new_with_axis_and_angle(godot_basis* r_dest, godot_vector3* p_axis, godot_real p_phi)

    void godot_basis_new_with_euler(godot_basis* r_dest, godot_vector3* p_euler)

    void godot_basis_new_with_euler_quat(godot_basis* r_dest, godot_quat* p_euler)

    godot_string godot_basis_as_string(godot_basis* p_self)

    godot_basis godot_basis_inverse(godot_basis* p_self)

    godot_basis godot_basis_transposed(godot_basis* p_self)

    godot_basis godot_basis_orthonormalized(godot_basis* p_self)

    godot_real godot_basis_determinant(godot_basis* p_self)

    godot_basis godot_basis_rotated(godot_basis* p_self, godot_vector3* p_axis, godot_real p_phi)

    godot_basis godot_basis_scaled(godot_basis* p_self, godot_vector3* p_scale)

    godot_vector3 godot_basis_get_scale(godot_basis* p_self)

    godot_vector3 godot_basis_get_euler(godot_basis* p_self)

    godot_quat godot_basis_get_quat(godot_basis* p_self)

    void godot_basis_set_quat(godot_basis* p_self, godot_quat* p_quat)

    void godot_basis_set_axis_angle_scale(godot_basis* p_self, godot_vector3* p_axis, godot_real p_phi, godot_vector3* p_scale)

    void godot_basis_set_euler_scale(godot_basis* p_self, godot_vector3* p_euler, godot_vector3* p_scale)

    void godot_basis_set_quat_scale(godot_basis* p_self, godot_quat* p_quat, godot_vector3* p_scale)

    godot_real godot_basis_tdotx(godot_basis* p_self, godot_vector3* p_with)

    godot_real godot_basis_tdoty(godot_basis* p_self, godot_vector3* p_with)

    godot_real godot_basis_tdotz(godot_basis* p_self, godot_vector3* p_with)

    godot_vector3 godot_basis_xform(godot_basis* p_self, godot_vector3* p_v)

    godot_vector3 godot_basis_xform_inv(godot_basis* p_self, godot_vector3* p_v)

    godot_int godot_basis_get_orthogonal_index(godot_basis* p_self)

    void godot_basis_new(godot_basis* r_dest)

    void godot_basis_get_elements(godot_basis* p_self, godot_vector3* p_elements)

    godot_vector3 godot_basis_get_axis(godot_basis* p_self, godot_int p_axis)

    void godot_basis_set_axis(godot_basis* p_self, godot_int p_axis, godot_vector3* p_value)

    godot_vector3 godot_basis_get_row(godot_basis* p_self, godot_int p_row)

    void godot_basis_set_row(godot_basis* p_self, godot_int p_row, godot_vector3* p_value)

    godot_bool godot_basis_operator_equal(godot_basis* p_self, godot_basis* p_b)

    godot_basis godot_basis_operator_add(godot_basis* p_self, godot_basis* p_b)

    godot_basis godot_basis_operator_subtract(godot_basis* p_self, godot_basis* p_b)

    godot_basis godot_basis_operator_multiply_vector(godot_basis* p_self, godot_basis* p_b)

    godot_basis godot_basis_operator_multiply_scalar(godot_basis* p_self, godot_real p_b)

    godot_basis godot_basis_slerp(godot_basis* p_self, godot_basis* p_b, godot_real p_t)

    ctypedef enum godot_vector3_axis:
        GODOT_VECTOR3_AXIS_X
        GODOT_VECTOR3_AXIS_Y
        GODOT_VECTOR3_AXIS_Z

    void godot_vector3_new(godot_vector3* r_dest, godot_real p_x, godot_real p_y, godot_real p_z)

    godot_string godot_vector3_as_string(godot_vector3* p_self)

    godot_int godot_vector3_min_axis(godot_vector3* p_self)

    godot_int godot_vector3_max_axis(godot_vector3* p_self)

    godot_real godot_vector3_length(godot_vector3* p_self)

    godot_real godot_vector3_length_squared(godot_vector3* p_self)

    godot_bool godot_vector3_is_normalized(godot_vector3* p_self)

    godot_vector3 godot_vector3_normalized(godot_vector3* p_self)

    godot_vector3 godot_vector3_inverse(godot_vector3* p_self)

    godot_vector3 godot_vector3_snapped(godot_vector3* p_self, godot_vector3* p_by)

    godot_vector3 godot_vector3_rotated(godot_vector3* p_self, godot_vector3* p_axis, godot_real p_phi)

    godot_vector3 godot_vector3_linear_interpolate(godot_vector3* p_self, godot_vector3* p_b, godot_real p_t)

    godot_vector3 godot_vector3_cubic_interpolate(godot_vector3* p_self, godot_vector3* p_b, godot_vector3* p_pre_a, godot_vector3* p_post_b, godot_real p_t)

    godot_real godot_vector3_dot(godot_vector3* p_self, godot_vector3* p_b)

    godot_vector3 godot_vector3_cross(godot_vector3* p_self, godot_vector3* p_b)

    godot_basis godot_vector3_outer(godot_vector3* p_self, godot_vector3* p_b)

    godot_basis godot_vector3_to_diagonal_matrix(godot_vector3* p_self)

    godot_vector3 godot_vector3_abs(godot_vector3* p_self)

    godot_vector3 godot_vector3_floor(godot_vector3* p_self)

    godot_vector3 godot_vector3_ceil(godot_vector3* p_self)

    godot_real godot_vector3_distance_to(godot_vector3* p_self, godot_vector3* p_b)

    godot_real godot_vector3_distance_squared_to(godot_vector3* p_self, godot_vector3* p_b)

    godot_real godot_vector3_angle_to(godot_vector3* p_self, godot_vector3* p_to)

    godot_vector3 godot_vector3_slide(godot_vector3* p_self, godot_vector3* p_n)

    godot_vector3 godot_vector3_bounce(godot_vector3* p_self, godot_vector3* p_n)

    godot_vector3 godot_vector3_reflect(godot_vector3* p_self, godot_vector3* p_n)

    godot_vector3 godot_vector3_operator_add(godot_vector3* p_self, godot_vector3* p_b)

    godot_vector3 godot_vector3_operator_subtract(godot_vector3* p_self, godot_vector3* p_b)

    godot_vector3 godot_vector3_operator_multiply_vector(godot_vector3* p_self, godot_vector3* p_b)

    godot_vector3 godot_vector3_operator_multiply_scalar(godot_vector3* p_self, godot_real p_b)

    godot_vector3 godot_vector3_operator_divide_vector(godot_vector3* p_self, godot_vector3* p_b)

    godot_vector3 godot_vector3_operator_divide_scalar(godot_vector3* p_self, godot_real p_b)

    godot_bool godot_vector3_operator_equal(godot_vector3* p_self, godot_vector3* p_b)

    godot_bool godot_vector3_operator_less(godot_vector3* p_self, godot_vector3* p_b)

    godot_vector3 godot_vector3_operator_neg(godot_vector3* p_self)

    void godot_vector3_set_axis(godot_vector3* p_self, godot_vector3_axis p_axis, godot_real p_val)

    godot_real godot_vector3_get_axis(godot_vector3* p_self, godot_vector3_axis p_axis)

    void godot_pool_byte_array_new(godot_pool_byte_array* r_dest)

    void godot_pool_byte_array_new_copy(godot_pool_byte_array* r_dest, godot_pool_byte_array* p_src)

    void godot_pool_byte_array_new_with_array(godot_pool_byte_array* r_dest, godot_array* p_a)

    void godot_pool_byte_array_append(godot_pool_byte_array* p_self, uint8_t p_data)

    void godot_pool_byte_array_append_array(godot_pool_byte_array* p_self, godot_pool_byte_array* p_array)

    godot_error godot_pool_byte_array_insert(godot_pool_byte_array* p_self, godot_int p_idx, uint8_t p_data)

    void godot_pool_byte_array_invert(godot_pool_byte_array* p_self)

    void godot_pool_byte_array_push_back(godot_pool_byte_array* p_self, uint8_t p_data)

    void godot_pool_byte_array_remove(godot_pool_byte_array* p_self, godot_int p_idx)

    void godot_pool_byte_array_resize(godot_pool_byte_array* p_self, godot_int p_size)

    godot_pool_byte_array_read_access* godot_pool_byte_array_read(godot_pool_byte_array* p_self)

    godot_pool_byte_array_write_access* godot_pool_byte_array_write(godot_pool_byte_array* p_self)

    void godot_pool_byte_array_set(godot_pool_byte_array* p_self, godot_int p_idx, uint8_t p_data)

    uint8_t godot_pool_byte_array_get(godot_pool_byte_array* p_self, godot_int p_idx)

    godot_int godot_pool_byte_array_size(godot_pool_byte_array* p_self)

    void godot_pool_byte_array_destroy(godot_pool_byte_array* p_self)

    void godot_pool_int_array_new(godot_pool_int_array* r_dest)

    void godot_pool_int_array_new_copy(godot_pool_int_array* r_dest, godot_pool_int_array* p_src)

    void godot_pool_int_array_new_with_array(godot_pool_int_array* r_dest, godot_array* p_a)

    void godot_pool_int_array_append(godot_pool_int_array* p_self, godot_int p_data)

    void godot_pool_int_array_append_array(godot_pool_int_array* p_self, godot_pool_int_array* p_array)

    godot_error godot_pool_int_array_insert(godot_pool_int_array* p_self, godot_int p_idx, godot_int p_data)

    void godot_pool_int_array_invert(godot_pool_int_array* p_self)

    void godot_pool_int_array_push_back(godot_pool_int_array* p_self, godot_int p_data)

    void godot_pool_int_array_remove(godot_pool_int_array* p_self, godot_int p_idx)

    void godot_pool_int_array_resize(godot_pool_int_array* p_self, godot_int p_size)

    godot_pool_int_array_read_access* godot_pool_int_array_read(godot_pool_int_array* p_self)

    godot_pool_int_array_write_access* godot_pool_int_array_write(godot_pool_int_array* p_self)

    void godot_pool_int_array_set(godot_pool_int_array* p_self, godot_int p_idx, godot_int p_data)

    godot_int godot_pool_int_array_get(godot_pool_int_array* p_self, godot_int p_idx)

    godot_int godot_pool_int_array_size(godot_pool_int_array* p_self)

    void godot_pool_int_array_destroy(godot_pool_int_array* p_self)

    void godot_pool_real_array_new(godot_pool_real_array* r_dest)

    void godot_pool_real_array_new_copy(godot_pool_real_array* r_dest, godot_pool_real_array* p_src)

    void godot_pool_real_array_new_with_array(godot_pool_real_array* r_dest, godot_array* p_a)

    void godot_pool_real_array_append(godot_pool_real_array* p_self, godot_real p_data)

    void godot_pool_real_array_append_array(godot_pool_real_array* p_self, godot_pool_real_array* p_array)

    godot_error godot_pool_real_array_insert(godot_pool_real_array* p_self, godot_int p_idx, godot_real p_data)

    void godot_pool_real_array_invert(godot_pool_real_array* p_self)

    void godot_pool_real_array_push_back(godot_pool_real_array* p_self, godot_real p_data)

    void godot_pool_real_array_remove(godot_pool_real_array* p_self, godot_int p_idx)

    void godot_pool_real_array_resize(godot_pool_real_array* p_self, godot_int p_size)

    godot_pool_real_array_read_access* godot_pool_real_array_read(godot_pool_real_array* p_self)

    godot_pool_real_array_write_access* godot_pool_real_array_write(godot_pool_real_array* p_self)

    void godot_pool_real_array_set(godot_pool_real_array* p_self, godot_int p_idx, godot_real p_data)

    godot_real godot_pool_real_array_get(godot_pool_real_array* p_self, godot_int p_idx)

    godot_int godot_pool_real_array_size(godot_pool_real_array* p_self)

    void godot_pool_real_array_destroy(godot_pool_real_array* p_self)

    void godot_pool_string_array_new(godot_pool_string_array* r_dest)

    void godot_pool_string_array_new_copy(godot_pool_string_array* r_dest, godot_pool_string_array* p_src)

    void godot_pool_string_array_new_with_array(godot_pool_string_array* r_dest, godot_array* p_a)

    void godot_pool_string_array_append(godot_pool_string_array* p_self, godot_string* p_data)

    void godot_pool_string_array_append_array(godot_pool_string_array* p_self, godot_pool_string_array* p_array)

    godot_error godot_pool_string_array_insert(godot_pool_string_array* p_self, godot_int p_idx, godot_string* p_data)

    void godot_pool_string_array_invert(godot_pool_string_array* p_self)

    void godot_pool_string_array_push_back(godot_pool_string_array* p_self, godot_string* p_data)

    void godot_pool_string_array_remove(godot_pool_string_array* p_self, godot_int p_idx)

    void godot_pool_string_array_resize(godot_pool_string_array* p_self, godot_int p_size)

    godot_pool_string_array_read_access* godot_pool_string_array_read(godot_pool_string_array* p_self)

    godot_pool_string_array_write_access* godot_pool_string_array_write(godot_pool_string_array* p_self)

    void godot_pool_string_array_set(godot_pool_string_array* p_self, godot_int p_idx, godot_string* p_data)

    godot_string godot_pool_string_array_get(godot_pool_string_array* p_self, godot_int p_idx)

    godot_int godot_pool_string_array_size(godot_pool_string_array* p_self)

    void godot_pool_string_array_destroy(godot_pool_string_array* p_self)

    void godot_pool_vector2_array_new(godot_pool_vector2_array* r_dest)

    void godot_pool_vector2_array_new_copy(godot_pool_vector2_array* r_dest, godot_pool_vector2_array* p_src)

    void godot_pool_vector2_array_new_with_array(godot_pool_vector2_array* r_dest, godot_array* p_a)

    void godot_pool_vector2_array_append(godot_pool_vector2_array* p_self, godot_vector2* p_data)

    void godot_pool_vector2_array_append_array(godot_pool_vector2_array* p_self, godot_pool_vector2_array* p_array)

    godot_error godot_pool_vector2_array_insert(godot_pool_vector2_array* p_self, godot_int p_idx, godot_vector2* p_data)

    void godot_pool_vector2_array_invert(godot_pool_vector2_array* p_self)

    void godot_pool_vector2_array_push_back(godot_pool_vector2_array* p_self, godot_vector2* p_data)

    void godot_pool_vector2_array_remove(godot_pool_vector2_array* p_self, godot_int p_idx)

    void godot_pool_vector2_array_resize(godot_pool_vector2_array* p_self, godot_int p_size)

    godot_pool_vector2_array_read_access* godot_pool_vector2_array_read(godot_pool_vector2_array* p_self)

    godot_pool_vector2_array_write_access* godot_pool_vector2_array_write(godot_pool_vector2_array* p_self)

    void godot_pool_vector2_array_set(godot_pool_vector2_array* p_self, godot_int p_idx, godot_vector2* p_data)

    godot_vector2 godot_pool_vector2_array_get(godot_pool_vector2_array* p_self, godot_int p_idx)

    godot_int godot_pool_vector2_array_size(godot_pool_vector2_array* p_self)

    void godot_pool_vector2_array_destroy(godot_pool_vector2_array* p_self)

    void godot_pool_vector3_array_new(godot_pool_vector3_array* r_dest)

    void godot_pool_vector3_array_new_copy(godot_pool_vector3_array* r_dest, godot_pool_vector3_array* p_src)

    void godot_pool_vector3_array_new_with_array(godot_pool_vector3_array* r_dest, godot_array* p_a)

    void godot_pool_vector3_array_append(godot_pool_vector3_array* p_self, godot_vector3* p_data)

    void godot_pool_vector3_array_append_array(godot_pool_vector3_array* p_self, godot_pool_vector3_array* p_array)

    godot_error godot_pool_vector3_array_insert(godot_pool_vector3_array* p_self, godot_int p_idx, godot_vector3* p_data)

    void godot_pool_vector3_array_invert(godot_pool_vector3_array* p_self)

    void godot_pool_vector3_array_push_back(godot_pool_vector3_array* p_self, godot_vector3* p_data)

    void godot_pool_vector3_array_remove(godot_pool_vector3_array* p_self, godot_int p_idx)

    void godot_pool_vector3_array_resize(godot_pool_vector3_array* p_self, godot_int p_size)

    godot_pool_vector3_array_read_access* godot_pool_vector3_array_read(godot_pool_vector3_array* p_self)

    godot_pool_vector3_array_write_access* godot_pool_vector3_array_write(godot_pool_vector3_array* p_self)

    void godot_pool_vector3_array_set(godot_pool_vector3_array* p_self, godot_int p_idx, godot_vector3* p_data)

    godot_vector3 godot_pool_vector3_array_get(godot_pool_vector3_array* p_self, godot_int p_idx)

    godot_int godot_pool_vector3_array_size(godot_pool_vector3_array* p_self)

    void godot_pool_vector3_array_destroy(godot_pool_vector3_array* p_self)

    void godot_pool_color_array_new(godot_pool_color_array* r_dest)

    void godot_pool_color_array_new_copy(godot_pool_color_array* r_dest, godot_pool_color_array* p_src)

    void godot_pool_color_array_new_with_array(godot_pool_color_array* r_dest, godot_array* p_a)

    void godot_pool_color_array_append(godot_pool_color_array* p_self, godot_color* p_data)

    void godot_pool_color_array_append_array(godot_pool_color_array* p_self, godot_pool_color_array* p_array)

    godot_error godot_pool_color_array_insert(godot_pool_color_array* p_self, godot_int p_idx, godot_color* p_data)

    void godot_pool_color_array_invert(godot_pool_color_array* p_self)

    void godot_pool_color_array_push_back(godot_pool_color_array* p_self, godot_color* p_data)

    void godot_pool_color_array_remove(godot_pool_color_array* p_self, godot_int p_idx)

    void godot_pool_color_array_resize(godot_pool_color_array* p_self, godot_int p_size)

    godot_pool_color_array_read_access* godot_pool_color_array_read(godot_pool_color_array* p_self)

    godot_pool_color_array_write_access* godot_pool_color_array_write(godot_pool_color_array* p_self)

    void godot_pool_color_array_set(godot_pool_color_array* p_self, godot_int p_idx, godot_color* p_data)

    godot_color godot_pool_color_array_get(godot_pool_color_array* p_self, godot_int p_idx)

    godot_int godot_pool_color_array_size(godot_pool_color_array* p_self)

    void godot_pool_color_array_destroy(godot_pool_color_array* p_self)

    godot_pool_byte_array_read_access* godot_pool_byte_array_read_access_copy(godot_pool_byte_array_read_access* p_other)

    uint8_t* godot_pool_byte_array_read_access_ptr(godot_pool_byte_array_read_access* p_read)

    void godot_pool_byte_array_read_access_operator_assign(godot_pool_byte_array_read_access* p_read, godot_pool_byte_array_read_access* p_other)

    void godot_pool_byte_array_read_access_destroy(godot_pool_byte_array_read_access* p_read)

    godot_pool_int_array_read_access* godot_pool_int_array_read_access_copy(godot_pool_int_array_read_access* p_other)

    godot_int* godot_pool_int_array_read_access_ptr(godot_pool_int_array_read_access* p_read)

    void godot_pool_int_array_read_access_operator_assign(godot_pool_int_array_read_access* p_read, godot_pool_int_array_read_access* p_other)

    void godot_pool_int_array_read_access_destroy(godot_pool_int_array_read_access* p_read)

    godot_pool_real_array_read_access* godot_pool_real_array_read_access_copy(godot_pool_real_array_read_access* p_other)

    godot_real* godot_pool_real_array_read_access_ptr(godot_pool_real_array_read_access* p_read)

    void godot_pool_real_array_read_access_operator_assign(godot_pool_real_array_read_access* p_read, godot_pool_real_array_read_access* p_other)

    void godot_pool_real_array_read_access_destroy(godot_pool_real_array_read_access* p_read)

    godot_pool_string_array_read_access* godot_pool_string_array_read_access_copy(godot_pool_string_array_read_access* p_other)

    godot_string* godot_pool_string_array_read_access_ptr(godot_pool_string_array_read_access* p_read)

    void godot_pool_string_array_read_access_operator_assign(godot_pool_string_array_read_access* p_read, godot_pool_string_array_read_access* p_other)

    void godot_pool_string_array_read_access_destroy(godot_pool_string_array_read_access* p_read)

    godot_pool_vector2_array_read_access* godot_pool_vector2_array_read_access_copy(godot_pool_vector2_array_read_access* p_other)

    godot_vector2* godot_pool_vector2_array_read_access_ptr(godot_pool_vector2_array_read_access* p_read)

    void godot_pool_vector2_array_read_access_operator_assign(godot_pool_vector2_array_read_access* p_read, godot_pool_vector2_array_read_access* p_other)

    void godot_pool_vector2_array_read_access_destroy(godot_pool_vector2_array_read_access* p_read)

    godot_pool_vector3_array_read_access* godot_pool_vector3_array_read_access_copy(godot_pool_vector3_array_read_access* p_other)

    godot_vector3* godot_pool_vector3_array_read_access_ptr(godot_pool_vector3_array_read_access* p_read)

    void godot_pool_vector3_array_read_access_operator_assign(godot_pool_vector3_array_read_access* p_read, godot_pool_vector3_array_read_access* p_other)

    void godot_pool_vector3_array_read_access_destroy(godot_pool_vector3_array_read_access* p_read)

    godot_pool_color_array_read_access* godot_pool_color_array_read_access_copy(godot_pool_color_array_read_access* p_other)

    godot_color* godot_pool_color_array_read_access_ptr(godot_pool_color_array_read_access* p_read)

    void godot_pool_color_array_read_access_operator_assign(godot_pool_color_array_read_access* p_read, godot_pool_color_array_read_access* p_other)

    void godot_pool_color_array_read_access_destroy(godot_pool_color_array_read_access* p_read)

    godot_pool_byte_array_write_access* godot_pool_byte_array_write_access_copy(godot_pool_byte_array_write_access* p_other)

    uint8_t* godot_pool_byte_array_write_access_ptr(godot_pool_byte_array_write_access* p_write)

    void godot_pool_byte_array_write_access_operator_assign(godot_pool_byte_array_write_access* p_write, godot_pool_byte_array_write_access* p_other)

    void godot_pool_byte_array_write_access_destroy(godot_pool_byte_array_write_access* p_write)

    godot_pool_int_array_write_access* godot_pool_int_array_write_access_copy(godot_pool_int_array_write_access* p_other)

    godot_int* godot_pool_int_array_write_access_ptr(godot_pool_int_array_write_access* p_write)

    void godot_pool_int_array_write_access_operator_assign(godot_pool_int_array_write_access* p_write, godot_pool_int_array_write_access* p_other)

    void godot_pool_int_array_write_access_destroy(godot_pool_int_array_write_access* p_write)

    godot_pool_real_array_write_access* godot_pool_real_array_write_access_copy(godot_pool_real_array_write_access* p_other)

    godot_real* godot_pool_real_array_write_access_ptr(godot_pool_real_array_write_access* p_write)

    void godot_pool_real_array_write_access_operator_assign(godot_pool_real_array_write_access* p_write, godot_pool_real_array_write_access* p_other)

    void godot_pool_real_array_write_access_destroy(godot_pool_real_array_write_access* p_write)

    godot_pool_string_array_write_access* godot_pool_string_array_write_access_copy(godot_pool_string_array_write_access* p_other)

    godot_string* godot_pool_string_array_write_access_ptr(godot_pool_string_array_write_access* p_write)

    void godot_pool_string_array_write_access_operator_assign(godot_pool_string_array_write_access* p_write, godot_pool_string_array_write_access* p_other)

    void godot_pool_string_array_write_access_destroy(godot_pool_string_array_write_access* p_write)

    godot_pool_vector2_array_write_access* godot_pool_vector2_array_write_access_copy(godot_pool_vector2_array_write_access* p_other)

    godot_vector2* godot_pool_vector2_array_write_access_ptr(godot_pool_vector2_array_write_access* p_write)

    void godot_pool_vector2_array_write_access_operator_assign(godot_pool_vector2_array_write_access* p_write, godot_pool_vector2_array_write_access* p_other)

    void godot_pool_vector2_array_write_access_destroy(godot_pool_vector2_array_write_access* p_write)

    godot_pool_vector3_array_write_access* godot_pool_vector3_array_write_access_copy(godot_pool_vector3_array_write_access* p_other)

    godot_vector3* godot_pool_vector3_array_write_access_ptr(godot_pool_vector3_array_write_access* p_write)

    void godot_pool_vector3_array_write_access_operator_assign(godot_pool_vector3_array_write_access* p_write, godot_pool_vector3_array_write_access* p_other)

    void godot_pool_vector3_array_write_access_destroy(godot_pool_vector3_array_write_access* p_write)

    godot_pool_color_array_write_access* godot_pool_color_array_write_access_copy(godot_pool_color_array_write_access* p_other)

    godot_color* godot_pool_color_array_write_access_ptr(godot_pool_color_array_write_access* p_write)

    void godot_pool_color_array_write_access_operator_assign(godot_pool_color_array_write_access* p_write, godot_pool_color_array_write_access* p_other)

    void godot_pool_color_array_write_access_destroy(godot_pool_color_array_write_access* p_write)

    ctypedef struct godot_variant:
        pass

    cdef enum godot_variant_type:
        GODOT_VARIANT_TYPE_NIL
        GODOT_VARIANT_TYPE_BOOL
        GODOT_VARIANT_TYPE_INT
        GODOT_VARIANT_TYPE_REAL
        GODOT_VARIANT_TYPE_STRING
        GODOT_VARIANT_TYPE_VECTOR2
        GODOT_VARIANT_TYPE_RECT2
        GODOT_VARIANT_TYPE_VECTOR3
        GODOT_VARIANT_TYPE_TRANSFORM2D
        GODOT_VARIANT_TYPE_PLANE
        GODOT_VARIANT_TYPE_QUAT
        GODOT_VARIANT_TYPE_AABB
        GODOT_VARIANT_TYPE_BASIS
        GODOT_VARIANT_TYPE_TRANSFORM
        GODOT_VARIANT_TYPE_COLOR
        GODOT_VARIANT_TYPE_NODE_PATH
        GODOT_VARIANT_TYPE_RID
        GODOT_VARIANT_TYPE_OBJECT
        GODOT_VARIANT_TYPE_DICTIONARY
        GODOT_VARIANT_TYPE_ARRAY
        GODOT_VARIANT_TYPE_POOL_BYTE_ARRAY
        GODOT_VARIANT_TYPE_POOL_INT_ARRAY
        GODOT_VARIANT_TYPE_POOL_REAL_ARRAY
        GODOT_VARIANT_TYPE_POOL_STRING_ARRAY
        GODOT_VARIANT_TYPE_POOL_VECTOR2_ARRAY
        GODOT_VARIANT_TYPE_POOL_VECTOR3_ARRAY
        GODOT_VARIANT_TYPE_POOL_COLOR_ARRAY

    cdef enum godot_variant_call_error_error:
        GODOT_CALL_ERROR_CALL_OK
        GODOT_CALL_ERROR_CALL_ERROR_INVALID_METHOD
        GODOT_CALL_ERROR_CALL_ERROR_INVALID_ARGUMENT
        GODOT_CALL_ERROR_CALL_ERROR_TOO_MANY_ARGUMENTS
        GODOT_CALL_ERROR_CALL_ERROR_TOO_FEW_ARGUMENTS
        GODOT_CALL_ERROR_CALL_ERROR_INSTANCE_IS_NULL

    cdef struct godot_variant_call_error:
        godot_variant_call_error_error error
        int argument
        godot_variant_type expected

    cdef enum godot_variant_operator:
        GODOT_VARIANT_OP_EQUAL
        GODOT_VARIANT_OP_NOT_EQUAL
        GODOT_VARIANT_OP_LESS
        GODOT_VARIANT_OP_LESS_EQUAL
        GODOT_VARIANT_OP_GREATER
        GODOT_VARIANT_OP_GREATER_EQUAL
        GODOT_VARIANT_OP_ADD
        GODOT_VARIANT_OP_SUBTRACT
        GODOT_VARIANT_OP_MULTIPLY
        GODOT_VARIANT_OP_DIVIDE
        GODOT_VARIANT_OP_NEGATE
        GODOT_VARIANT_OP_POSITIVE
        GODOT_VARIANT_OP_MODULE
        GODOT_VARIANT_OP_STRING_CONCAT
        GODOT_VARIANT_OP_SHIFT_LEFT
        GODOT_VARIANT_OP_SHIFT_RIGHT
        GODOT_VARIANT_OP_BIT_AND
        GODOT_VARIANT_OP_BIT_OR
        GODOT_VARIANT_OP_BIT_XOR
        GODOT_VARIANT_OP_BIT_NEGATE
        GODOT_VARIANT_OP_AND
        GODOT_VARIANT_OP_OR
        GODOT_VARIANT_OP_XOR
        GODOT_VARIANT_OP_NOT
        GODOT_VARIANT_OP_IN
        GODOT_VARIANT_OP_MAX

    ctypedef struct godot_aabb:
        pass

    ctypedef struct godot_plane:
        pass

    void godot_plane_new_with_reals(godot_plane* r_dest, godot_real p_a, godot_real p_b, godot_real p_c, godot_real p_d)

    void godot_plane_new_with_vectors(godot_plane* r_dest, godot_vector3* p_v1, godot_vector3* p_v2, godot_vector3* p_v3)

    void godot_plane_new_with_normal(godot_plane* r_dest, godot_vector3* p_normal, godot_real p_d)

    godot_string godot_plane_as_string(godot_plane* p_self)

    godot_plane godot_plane_normalized(godot_plane* p_self)

    godot_vector3 godot_plane_center(godot_plane* p_self)

    godot_vector3 godot_plane_get_any_point(godot_plane* p_self)

    godot_bool godot_plane_is_point_over(godot_plane* p_self, godot_vector3* p_point)

    godot_real godot_plane_distance_to(godot_plane* p_self, godot_vector3* p_point)

    godot_bool godot_plane_has_point(godot_plane* p_self, godot_vector3* p_point, godot_real p_epsilon)

    godot_vector3 godot_plane_project(godot_plane* p_self, godot_vector3* p_point)

    godot_bool godot_plane_intersect_3(godot_plane* p_self, godot_vector3* r_dest, godot_plane* p_b, godot_plane* p_c)

    godot_bool godot_plane_intersects_ray(godot_plane* p_self, godot_vector3* r_dest, godot_vector3* p_from, godot_vector3* p_dir)

    godot_bool godot_plane_intersects_segment(godot_plane* p_self, godot_vector3* r_dest, godot_vector3* p_begin, godot_vector3* p_end)

    godot_plane godot_plane_operator_neg(godot_plane* p_self)

    godot_bool godot_plane_operator_equal(godot_plane* p_self, godot_plane* p_b)

    void godot_plane_set_normal(godot_plane* p_self, godot_vector3* p_normal)

    godot_vector3 godot_plane_get_normal(godot_plane* p_self)

    godot_real godot_plane_get_d(godot_plane* p_self)

    void godot_plane_set_d(godot_plane* p_self, godot_real p_d)

    void godot_aabb_new(godot_aabb* r_dest, godot_vector3* p_pos, godot_vector3* p_size)

    godot_vector3 godot_aabb_get_position(godot_aabb* p_self)

    void godot_aabb_set_position(godot_aabb* p_self, godot_vector3* p_v)

    godot_vector3 godot_aabb_get_size(godot_aabb* p_self)

    void godot_aabb_set_size(godot_aabb* p_self, godot_vector3* p_v)

    godot_string godot_aabb_as_string(godot_aabb* p_self)

    godot_real godot_aabb_get_area(godot_aabb* p_self)

    godot_bool godot_aabb_has_no_area(godot_aabb* p_self)

    godot_bool godot_aabb_has_no_surface(godot_aabb* p_self)

    godot_bool godot_aabb_intersects(godot_aabb* p_self, godot_aabb* p_with)

    godot_bool godot_aabb_encloses(godot_aabb* p_self, godot_aabb* p_with)

    godot_aabb godot_aabb_merge(godot_aabb* p_self, godot_aabb* p_with)

    godot_aabb godot_aabb_intersection(godot_aabb* p_self, godot_aabb* p_with)

    godot_bool godot_aabb_intersects_plane(godot_aabb* p_self, godot_plane* p_plane)

    godot_bool godot_aabb_intersects_segment(godot_aabb* p_self, godot_vector3* p_from, godot_vector3* p_to)

    godot_bool godot_aabb_has_point(godot_aabb* p_self, godot_vector3* p_point)

    godot_vector3 godot_aabb_get_support(godot_aabb* p_self, godot_vector3* p_dir)

    godot_vector3 godot_aabb_get_longest_axis(godot_aabb* p_self)

    godot_int godot_aabb_get_longest_axis_index(godot_aabb* p_self)

    godot_real godot_aabb_get_longest_axis_size(godot_aabb* p_self)

    godot_vector3 godot_aabb_get_shortest_axis(godot_aabb* p_self)

    godot_int godot_aabb_get_shortest_axis_index(godot_aabb* p_self)

    godot_real godot_aabb_get_shortest_axis_size(godot_aabb* p_self)

    godot_aabb godot_aabb_expand(godot_aabb* p_self, godot_vector3* p_to_point)

    godot_aabb godot_aabb_grow(godot_aabb* p_self, godot_real p_by)

    godot_vector3 godot_aabb_get_endpoint(godot_aabb* p_self, godot_int p_idx)

    godot_bool godot_aabb_operator_equal(godot_aabb* p_self, godot_aabb* p_b)

    ctypedef struct godot_dictionary:
        pass

    void godot_dictionary_new(godot_dictionary* r_dest)

    void godot_dictionary_new_copy(godot_dictionary* r_dest, godot_dictionary* p_src)

    void godot_dictionary_destroy(godot_dictionary* p_self)

    godot_int godot_dictionary_size(godot_dictionary* p_self)

    godot_bool godot_dictionary_empty(godot_dictionary* p_self)

    void godot_dictionary_clear(godot_dictionary* p_self)

    godot_bool godot_dictionary_has(godot_dictionary* p_self, godot_variant* p_key)

    godot_bool godot_dictionary_has_all(godot_dictionary* p_self, godot_array* p_keys)

    void godot_dictionary_erase(godot_dictionary* p_self, godot_variant* p_key)

    godot_int godot_dictionary_hash(godot_dictionary* p_self)

    godot_array godot_dictionary_keys(godot_dictionary* p_self)

    godot_array godot_dictionary_values(godot_dictionary* p_self)

    godot_variant godot_dictionary_get(godot_dictionary* p_self, godot_variant* p_key)

    void godot_dictionary_set(godot_dictionary* p_self, godot_variant* p_key, godot_variant* p_value)

    godot_variant* godot_dictionary_operator_index(godot_dictionary* p_self, godot_variant* p_key)

    godot_variant* godot_dictionary_operator_index_const(godot_dictionary* p_self, godot_variant* p_key)

    godot_variant* godot_dictionary_next(godot_dictionary* p_self, godot_variant* p_key)

    godot_bool godot_dictionary_operator_equal(godot_dictionary* p_self, godot_dictionary* p_b)

    godot_string godot_dictionary_to_json(godot_dictionary* p_self)

    godot_bool godot_dictionary_erase_with_return(godot_dictionary* p_self, godot_variant* p_key)

    ctypedef struct godot_node_path:
        pass

    void godot_node_path_new(godot_node_path* r_dest, godot_string* p_from)

    void godot_node_path_new_copy(godot_node_path* r_dest, godot_node_path* p_src)

    void godot_node_path_destroy(godot_node_path* p_self)

    godot_string godot_node_path_as_string(godot_node_path* p_self)

    godot_bool godot_node_path_is_absolute(godot_node_path* p_self)

    godot_int godot_node_path_get_name_count(godot_node_path* p_self)

    godot_string godot_node_path_get_name(godot_node_path* p_self, godot_int p_idx)

    godot_int godot_node_path_get_subname_count(godot_node_path* p_self)

    godot_string godot_node_path_get_subname(godot_node_path* p_self, godot_int p_idx)

    godot_string godot_node_path_get_concatenated_subnames(godot_node_path* p_self)

    godot_bool godot_node_path_is_empty(godot_node_path* p_self)

    godot_bool godot_node_path_operator_equal(godot_node_path* p_self, godot_node_path* p_b)

    godot_node_path godot_node_path_get_as_property_path(godot_node_path* p_self)

    cdef struct godot_rect2:
        pass

    void godot_rect2_new_with_position_and_size(godot_rect2* r_dest, godot_vector2* p_pos, godot_vector2* p_size)

    void godot_rect2_new(godot_rect2* r_dest, godot_real p_x, godot_real p_y, godot_real p_width, godot_real p_height)

    godot_string godot_rect2_as_string(godot_rect2* p_self)

    godot_real godot_rect2_get_area(godot_rect2* p_self)

    godot_bool godot_rect2_intersects(godot_rect2* p_self, godot_rect2* p_b)

    godot_bool godot_rect2_encloses(godot_rect2* p_self, godot_rect2* p_b)

    godot_bool godot_rect2_has_no_area(godot_rect2* p_self)

    godot_rect2 godot_rect2_clip(godot_rect2* p_self, godot_rect2* p_b)

    godot_rect2 godot_rect2_merge(godot_rect2* p_self, godot_rect2* p_b)

    godot_bool godot_rect2_has_point(godot_rect2* p_self, godot_vector2* p_point)

    godot_rect2 godot_rect2_grow(godot_rect2* p_self, godot_real p_by)

    godot_rect2 godot_rect2_grow_individual(godot_rect2* p_self, godot_real p_left, godot_real p_top, godot_real p_right, godot_real p_bottom)

    godot_rect2 godot_rect2_grow_margin(godot_rect2* p_self, godot_int p_margin, godot_real p_by)

    godot_rect2 godot_rect2_abs(godot_rect2* p_self)

    godot_rect2 godot_rect2_expand(godot_rect2* p_self, godot_vector2* p_to)

    godot_bool godot_rect2_operator_equal(godot_rect2* p_self, godot_rect2* p_b)

    godot_vector2 godot_rect2_get_position(godot_rect2* p_self)

    godot_vector2 godot_rect2_get_size(godot_rect2* p_self)

    void godot_rect2_set_position(godot_rect2* p_self, godot_vector2* p_pos)

    void godot_rect2_set_size(godot_rect2* p_self, godot_vector2* p_size)

    ctypedef struct godot_rid:
        pass

    void godot_rid_new(godot_rid* r_dest)

    godot_int godot_rid_get_id(godot_rid* p_self)

    void godot_rid_new_with_resource(godot_rid* r_dest, godot_object* p_from)

    godot_bool godot_rid_operator_equal(godot_rid* p_self, godot_rid* p_b)

    godot_bool godot_rid_operator_less(godot_rid* p_self, godot_rid* p_b)

    ctypedef struct godot_transform:
        pass

    void godot_transform_new_with_axis_origin(godot_transform* r_dest, godot_vector3* p_x_axis, godot_vector3* p_y_axis, godot_vector3* p_z_axis, godot_vector3* p_origin)

    void godot_transform_new(godot_transform* r_dest, godot_basis* p_basis, godot_vector3* p_origin)

    void godot_transform_new_with_quat(godot_transform* r_dest, godot_quat* p_quat)

    godot_basis godot_transform_get_basis(godot_transform* p_self)

    void godot_transform_set_basis(godot_transform* p_self, godot_basis* p_v)

    godot_vector3 godot_transform_get_origin(godot_transform* p_self)

    void godot_transform_set_origin(godot_transform* p_self, godot_vector3* p_v)

    godot_string godot_transform_as_string(godot_transform* p_self)

    godot_transform godot_transform_inverse(godot_transform* p_self)

    godot_transform godot_transform_affine_inverse(godot_transform* p_self)

    godot_transform godot_transform_orthonormalized(godot_transform* p_self)

    godot_transform godot_transform_rotated(godot_transform* p_self, godot_vector3* p_axis, godot_real p_phi)

    godot_transform godot_transform_scaled(godot_transform* p_self, godot_vector3* p_scale)

    godot_transform godot_transform_translated(godot_transform* p_self, godot_vector3* p_ofs)

    godot_transform godot_transform_looking_at(godot_transform* p_self, godot_vector3* p_target, godot_vector3* p_up)

    godot_plane godot_transform_xform_plane(godot_transform* p_self, godot_plane* p_v)

    godot_plane godot_transform_xform_inv_plane(godot_transform* p_self, godot_plane* p_v)

    void godot_transform_new_identity(godot_transform* r_dest)

    godot_bool godot_transform_operator_equal(godot_transform* p_self, godot_transform* p_b)

    godot_transform godot_transform_operator_multiply(godot_transform* p_self, godot_transform* p_b)

    godot_vector3 godot_transform_xform_vector3(godot_transform* p_self, godot_vector3* p_v)

    godot_vector3 godot_transform_xform_inv_vector3(godot_transform* p_self, godot_vector3* p_v)

    godot_aabb godot_transform_xform_aabb(godot_transform* p_self, godot_aabb* p_v)

    godot_aabb godot_transform_xform_inv_aabb(godot_transform* p_self, godot_aabb* p_v)

    ctypedef struct godot_transform2d:
        pass

    void godot_transform2d_new(godot_transform2d* r_dest, godot_real p_rot, godot_vector2* p_pos)

    void godot_transform2d_new_axis_origin(godot_transform2d* r_dest, godot_vector2* p_x_axis, godot_vector2* p_y_axis, godot_vector2* p_origin)

    godot_string godot_transform2d_as_string(godot_transform2d* p_self)

    godot_transform2d godot_transform2d_inverse(godot_transform2d* p_self)

    godot_transform2d godot_transform2d_affine_inverse(godot_transform2d* p_self)

    godot_real godot_transform2d_get_rotation(godot_transform2d* p_self)

    godot_vector2 godot_transform2d_get_origin(godot_transform2d* p_self)

    godot_vector2 godot_transform2d_get_scale(godot_transform2d* p_self)

    godot_transform2d godot_transform2d_orthonormalized(godot_transform2d* p_self)

    godot_transform2d godot_transform2d_rotated(godot_transform2d* p_self, godot_real p_phi)

    godot_transform2d godot_transform2d_scaled(godot_transform2d* p_self, godot_vector2* p_scale)

    godot_transform2d godot_transform2d_translated(godot_transform2d* p_self, godot_vector2* p_offset)

    godot_vector2 godot_transform2d_xform_vector2(godot_transform2d* p_self, godot_vector2* p_v)

    godot_vector2 godot_transform2d_xform_inv_vector2(godot_transform2d* p_self, godot_vector2* p_v)

    godot_vector2 godot_transform2d_basis_xform_vector2(godot_transform2d* p_self, godot_vector2* p_v)

    godot_vector2 godot_transform2d_basis_xform_inv_vector2(godot_transform2d* p_self, godot_vector2* p_v)

    godot_transform2d godot_transform2d_interpolate_with(godot_transform2d* p_self, godot_transform2d* p_m, godot_real p_c)

    godot_bool godot_transform2d_operator_equal(godot_transform2d* p_self, godot_transform2d* p_b)

    godot_transform2d godot_transform2d_operator_multiply(godot_transform2d* p_self, godot_transform2d* p_b)

    void godot_transform2d_new_identity(godot_transform2d* r_dest)

    godot_rect2 godot_transform2d_xform_rect2(godot_transform2d* p_self, godot_rect2* p_v)

    godot_rect2 godot_transform2d_xform_inv_rect2(godot_transform2d* p_self, godot_rect2* p_v)

    godot_variant_type godot_variant_get_type(godot_variant* p_v)

    void godot_variant_new_copy(godot_variant* r_dest, godot_variant* p_src)

    void godot_variant_new_nil(godot_variant* r_dest)

    void godot_variant_new_bool(godot_variant* r_dest, godot_bool p_b)

    void godot_variant_new_uint(godot_variant* r_dest, uint64_t p_i)

    void godot_variant_new_int(godot_variant* r_dest, int64_t p_i)

    void godot_variant_new_real(godot_variant* r_dest, double p_r)

    void godot_variant_new_string(godot_variant* r_dest, godot_string* p_s)

    void godot_variant_new_vector2(godot_variant* r_dest, godot_vector2* p_v2)

    void godot_variant_new_rect2(godot_variant* r_dest, godot_rect2* p_rect2)

    void godot_variant_new_vector3(godot_variant* r_dest, godot_vector3* p_v3)

    void godot_variant_new_transform2d(godot_variant* r_dest, godot_transform2d* p_t2d)

    void godot_variant_new_plane(godot_variant* r_dest, godot_plane* p_plane)

    void godot_variant_new_quat(godot_variant* r_dest, godot_quat* p_quat)

    void godot_variant_new_aabb(godot_variant* r_dest, godot_aabb* p_aabb)

    void godot_variant_new_basis(godot_variant* r_dest, godot_basis* p_basis)

    void godot_variant_new_transform(godot_variant* r_dest, godot_transform* p_trans)

    void godot_variant_new_color(godot_variant* r_dest, godot_color* p_color)

    void godot_variant_new_node_path(godot_variant* r_dest, godot_node_path* p_np)

    void godot_variant_new_rid(godot_variant* r_dest, godot_rid* p_rid)

    void godot_variant_new_object(godot_variant* r_dest, godot_object* p_obj)

    void godot_variant_new_dictionary(godot_variant* r_dest, godot_dictionary* p_dict)

    void godot_variant_new_array(godot_variant* r_dest, godot_array* p_arr)

    void godot_variant_new_pool_byte_array(godot_variant* r_dest, godot_pool_byte_array* p_pba)

    void godot_variant_new_pool_int_array(godot_variant* r_dest, godot_pool_int_array* p_pia)

    void godot_variant_new_pool_real_array(godot_variant* r_dest, godot_pool_real_array* p_pra)

    void godot_variant_new_pool_string_array(godot_variant* r_dest, godot_pool_string_array* p_psa)

    void godot_variant_new_pool_vector2_array(godot_variant* r_dest, godot_pool_vector2_array* p_pv2a)

    void godot_variant_new_pool_vector3_array(godot_variant* r_dest, godot_pool_vector3_array* p_pv3a)

    void godot_variant_new_pool_color_array(godot_variant* r_dest, godot_pool_color_array* p_pca)

    godot_bool godot_variant_as_bool(godot_variant* p_self)

    uint64_t godot_variant_as_uint(godot_variant* p_self)

    int64_t godot_variant_as_int(godot_variant* p_self)

    double godot_variant_as_real(godot_variant* p_self)

    godot_string godot_variant_as_string(godot_variant* p_self)

    godot_vector2 godot_variant_as_vector2(godot_variant* p_self)

    godot_rect2 godot_variant_as_rect2(godot_variant* p_self)

    godot_vector3 godot_variant_as_vector3(godot_variant* p_self)

    godot_transform2d godot_variant_as_transform2d(godot_variant* p_self)

    godot_plane godot_variant_as_plane(godot_variant* p_self)

    godot_quat godot_variant_as_quat(godot_variant* p_self)

    godot_aabb godot_variant_as_aabb(godot_variant* p_self)

    godot_basis godot_variant_as_basis(godot_variant* p_self)

    godot_transform godot_variant_as_transform(godot_variant* p_self)

    godot_color godot_variant_as_color(godot_variant* p_self)

    godot_node_path godot_variant_as_node_path(godot_variant* p_self)

    godot_rid godot_variant_as_rid(godot_variant* p_self)

    godot_object* godot_variant_as_object(godot_variant* p_self)

    godot_dictionary godot_variant_as_dictionary(godot_variant* p_self)

    godot_array godot_variant_as_array(godot_variant* p_self)

    godot_pool_byte_array godot_variant_as_pool_byte_array(godot_variant* p_self)

    godot_pool_int_array godot_variant_as_pool_int_array(godot_variant* p_self)

    godot_pool_real_array godot_variant_as_pool_real_array(godot_variant* p_self)

    godot_pool_string_array godot_variant_as_pool_string_array(godot_variant* p_self)

    godot_pool_vector2_array godot_variant_as_pool_vector2_array(godot_variant* p_self)

    godot_pool_vector3_array godot_variant_as_pool_vector3_array(godot_variant* p_self)

    godot_pool_color_array godot_variant_as_pool_color_array(godot_variant* p_self)

    godot_variant godot_variant_call(godot_variant* p_self, godot_string* p_method, godot_variant** p_args, godot_int p_argcount, godot_variant_call_error* r_error)

    godot_bool godot_variant_has_method(godot_variant* p_self, godot_string* p_method)

    godot_bool godot_variant_operator_equal(godot_variant* p_self, godot_variant* p_other)

    godot_bool godot_variant_operator_less(godot_variant* p_self, godot_variant* p_other)

    godot_bool godot_variant_hash_compare(godot_variant* p_self, godot_variant* p_other)

    godot_bool godot_variant_booleanize(godot_variant* p_self)

    void godot_variant_destroy(godot_variant* p_self)

    godot_string godot_variant_get_operator_name(godot_variant_operator p_op)

    void godot_variant_evaluate(godot_variant_operator p_op, godot_variant* p_a, godot_variant* p_b, godot_variant* r_ret, godot_bool* r_valid)

    void godot_array_new(godot_array* r_dest)

    void godot_array_new_copy(godot_array* r_dest, godot_array* p_src)

    void godot_array_new_pool_color_array(godot_array* r_dest, godot_pool_color_array* p_pca)

    void godot_array_new_pool_vector3_array(godot_array* r_dest, godot_pool_vector3_array* p_pv3a)

    void godot_array_new_pool_vector2_array(godot_array* r_dest, godot_pool_vector2_array* p_pv2a)

    void godot_array_new_pool_string_array(godot_array* r_dest, godot_pool_string_array* p_psa)

    void godot_array_new_pool_real_array(godot_array* r_dest, godot_pool_real_array* p_pra)

    void godot_array_new_pool_int_array(godot_array* r_dest, godot_pool_int_array* p_pia)

    void godot_array_new_pool_byte_array(godot_array* r_dest, godot_pool_byte_array* p_pba)

    void godot_array_set(godot_array* p_self, godot_int p_idx, godot_variant* p_value)

    godot_variant godot_array_get(godot_array* p_self, godot_int p_idx)

    godot_variant* godot_array_operator_index(godot_array* p_self, godot_int p_idx)

    godot_variant* godot_array_operator_index_const(godot_array* p_self, godot_int p_idx)

    void godot_array_append(godot_array* p_self, godot_variant* p_value)

    void godot_array_clear(godot_array* p_self)

    godot_int godot_array_count(godot_array* p_self, godot_variant* p_value)

    godot_bool godot_array_empty(godot_array* p_self)

    void godot_array_erase(godot_array* p_self, godot_variant* p_value)

    godot_variant godot_array_front(godot_array* p_self)

    godot_variant godot_array_back(godot_array* p_self)

    godot_int godot_array_find(godot_array* p_self, godot_variant* p_what, godot_int p_from)

    godot_int godot_array_find_last(godot_array* p_self, godot_variant* p_what)

    godot_bool godot_array_has(godot_array* p_self, godot_variant* p_value)

    godot_int godot_array_hash(godot_array* p_self)

    void godot_array_insert(godot_array* p_self, godot_int p_pos, godot_variant* p_value)

    void godot_array_invert(godot_array* p_self)

    godot_variant godot_array_pop_back(godot_array* p_self)

    godot_variant godot_array_pop_front(godot_array* p_self)

    void godot_array_push_back(godot_array* p_self, godot_variant* p_value)

    void godot_array_push_front(godot_array* p_self, godot_variant* p_value)

    void godot_array_remove(godot_array* p_self, godot_int p_idx)

    void godot_array_resize(godot_array* p_self, godot_int p_size)

    godot_int godot_array_rfind(godot_array* p_self, godot_variant* p_what, godot_int p_from)

    godot_int godot_array_size(godot_array* p_self)

    void godot_array_sort(godot_array* p_self)

    void godot_array_sort_custom(godot_array* p_self, godot_object* p_obj, godot_string* p_func)

    godot_int godot_array_bsearch(godot_array* p_self, godot_variant* p_value, godot_bool p_before)

    godot_int godot_array_bsearch_custom(godot_array* p_self, godot_variant* p_value, godot_object* p_obj, godot_string* p_func, godot_bool p_before)

    void godot_array_destroy(godot_array* p_self)

    godot_array godot_array_duplicate(godot_array* p_self, godot_bool p_deep)

    godot_variant godot_array_max(godot_array* p_self)

    godot_variant godot_array_min(godot_array* p_self)

    void godot_array_shuffle(godot_array* p_self)

    godot_int godot_char_string_length(godot_char_string* p_cs)

    char* godot_char_string_get_data(godot_char_string* p_cs)

    void godot_char_string_destroy(godot_char_string* p_cs)

    void godot_string_new(godot_string* r_dest)

    void godot_string_new_copy(godot_string* r_dest, godot_string* p_src)

    void godot_string_new_with_wide_string(godot_string* r_dest, wchar_t* p_contents, int p_size)

    wchar_t* godot_string_operator_index(godot_string* p_self, godot_int p_idx)

    wchar_t godot_string_operator_index_const(godot_string* p_self, godot_int p_idx)

    wchar_t* godot_string_wide_str(godot_string* p_self)

    godot_bool godot_string_operator_equal(godot_string* p_self, godot_string* p_b)

    godot_bool godot_string_operator_less(godot_string* p_self, godot_string* p_b)

    godot_string godot_string_operator_plus(godot_string* p_self, godot_string* p_b)

    godot_int godot_string_length(godot_string* p_self)

    signed char godot_string_casecmp_to(godot_string* p_self, godot_string* p_str)

    signed char godot_string_nocasecmp_to(godot_string* p_self, godot_string* p_str)

    signed char godot_string_naturalnocasecmp_to(godot_string* p_self, godot_string* p_str)

    godot_bool godot_string_begins_with(godot_string* p_self, godot_string* p_string)

    godot_bool godot_string_begins_with_char_array(godot_string* p_self, char* p_char_array)

    godot_array godot_string_bigrams(godot_string* p_self)

    godot_string godot_string_chr(wchar_t p_character)

    godot_bool godot_string_ends_with(godot_string* p_self, godot_string* p_string)

    godot_int godot_string_find(godot_string* p_self, godot_string p_what)

    godot_int godot_string_find_from(godot_string* p_self, godot_string p_what, godot_int p_from)

    godot_int godot_string_findmk(godot_string* p_self, godot_array* p_keys)

    godot_int godot_string_findmk_from(godot_string* p_self, godot_array* p_keys, godot_int p_from)

    godot_int godot_string_findmk_from_in_place(godot_string* p_self, godot_array* p_keys, godot_int p_from, godot_int* r_key)

    godot_int godot_string_findn(godot_string* p_self, godot_string p_what)

    godot_int godot_string_findn_from(godot_string* p_self, godot_string p_what, godot_int p_from)

    godot_int godot_string_find_last(godot_string* p_self, godot_string p_what)

    godot_string godot_string_format(godot_string* p_self, godot_variant* p_values)

    godot_string godot_string_format_with_custom_placeholder(godot_string* p_self, godot_variant* p_values, char* p_placeholder)

    godot_string godot_string_hex_encode_buffer(uint8_t* p_buffer, godot_int p_len)

    godot_int godot_string_hex_to_int(godot_string* p_self)

    godot_int godot_string_hex_to_int_without_prefix(godot_string* p_self)

    godot_string godot_string_insert(godot_string* p_self, godot_int p_at_pos, godot_string p_string)

    godot_bool godot_string_is_numeric(godot_string* p_self)

    godot_bool godot_string_is_subsequence_of(godot_string* p_self, godot_string* p_string)

    godot_bool godot_string_is_subsequence_ofi(godot_string* p_self, godot_string* p_string)

    godot_string godot_string_lpad(godot_string* p_self, godot_int p_min_length)

    godot_string godot_string_lpad_with_custom_character(godot_string* p_self, godot_int p_min_length, godot_string* p_character)

    godot_bool godot_string_match(godot_string* p_self, godot_string* p_wildcard)

    godot_bool godot_string_matchn(godot_string* p_self, godot_string* p_wildcard)

    godot_string godot_string_md5(uint8_t* p_md5)

    godot_string godot_string_num(double p_num)

    godot_string godot_string_num_int64(int64_t p_num, godot_int p_base)

    godot_string godot_string_num_int64_capitalized(int64_t p_num, godot_int p_base, godot_bool p_capitalize_hex)

    godot_string godot_string_num_real(double p_num)

    godot_string godot_string_num_scientific(double p_num)

    godot_string godot_string_num_with_decimals(double p_num, godot_int p_decimals)

    godot_string godot_string_pad_decimals(godot_string* p_self, godot_int p_digits)

    godot_string godot_string_pad_zeros(godot_string* p_self, godot_int p_digits)

    godot_string godot_string_replace_first(godot_string* p_self, godot_string p_key, godot_string p_with)

    godot_string godot_string_replace(godot_string* p_self, godot_string p_key, godot_string p_with)

    godot_string godot_string_replacen(godot_string* p_self, godot_string p_key, godot_string p_with)

    godot_int godot_string_rfind(godot_string* p_self, godot_string p_what)

    godot_int godot_string_rfindn(godot_string* p_self, godot_string p_what)

    godot_int godot_string_rfind_from(godot_string* p_self, godot_string p_what, godot_int p_from)

    godot_int godot_string_rfindn_from(godot_string* p_self, godot_string p_what, godot_int p_from)

    godot_string godot_string_rpad(godot_string* p_self, godot_int p_min_length)

    godot_string godot_string_rpad_with_custom_character(godot_string* p_self, godot_int p_min_length, godot_string* p_character)

    godot_real godot_string_similarity(godot_string* p_self, godot_string* p_string)

    godot_string godot_string_sprintf(godot_string* p_self, godot_array* p_values, godot_bool* p_error)

    godot_string godot_string_substr(godot_string* p_self, godot_int p_from, godot_int p_chars)

    double godot_string_to_double(godot_string* p_self)

    godot_real godot_string_to_float(godot_string* p_self)

    godot_int godot_string_to_int(godot_string* p_self)

    godot_string godot_string_camelcase_to_underscore(godot_string* p_self)

    godot_string godot_string_camelcase_to_underscore_lowercased(godot_string* p_self)

    godot_string godot_string_capitalize(godot_string* p_self)

    double godot_string_char_to_double(char* p_what)

    godot_int godot_string_char_to_int(char* p_what)

    int64_t godot_string_wchar_to_int(wchar_t* p_str)

    godot_int godot_string_char_to_int_with_len(char* p_what, godot_int p_len)

    int64_t godot_string_char_to_int64_with_len(wchar_t* p_str, int p_len)

    int64_t godot_string_hex_to_int64(godot_string* p_self)

    int64_t godot_string_hex_to_int64_with_prefix(godot_string* p_self)

    int64_t godot_string_to_int64(godot_string* p_self)

    double godot_string_unicode_char_to_double(wchar_t* p_str, wchar_t** r_end)

    godot_int godot_string_get_slice_count(godot_string* p_self, godot_string p_splitter)

    godot_string godot_string_get_slice(godot_string* p_self, godot_string p_splitter, godot_int p_slice)

    godot_string godot_string_get_slicec(godot_string* p_self, wchar_t p_splitter, godot_int p_slice)

    godot_array godot_string_split(godot_string* p_self, godot_string* p_splitter)

    godot_array godot_string_split_allow_empty(godot_string* p_self, godot_string* p_splitter)

    godot_array godot_string_split_floats(godot_string* p_self, godot_string* p_splitter)

    godot_array godot_string_split_floats_allows_empty(godot_string* p_self, godot_string* p_splitter)

    godot_array godot_string_split_floats_mk(godot_string* p_self, godot_array* p_splitters)

    godot_array godot_string_split_floats_mk_allows_empty(godot_string* p_self, godot_array* p_splitters)

    godot_array godot_string_split_ints(godot_string* p_self, godot_string* p_splitter)

    godot_array godot_string_split_ints_allows_empty(godot_string* p_self, godot_string* p_splitter)

    godot_array godot_string_split_ints_mk(godot_string* p_self, godot_array* p_splitters)

    godot_array godot_string_split_ints_mk_allows_empty(godot_string* p_self, godot_array* p_splitters)

    godot_array godot_string_split_spaces(godot_string* p_self)

    wchar_t godot_string_char_lowercase(wchar_t p_char)

    wchar_t godot_string_char_uppercase(wchar_t p_char)

    godot_string godot_string_to_lower(godot_string* p_self)

    godot_string godot_string_to_upper(godot_string* p_self)

    godot_string godot_string_get_basename(godot_string* p_self)

    godot_string godot_string_get_extension(godot_string* p_self)

    godot_string godot_string_left(godot_string* p_self, godot_int p_pos)

    wchar_t godot_string_ord_at(godot_string* p_self, godot_int p_idx)

    godot_string godot_string_plus_file(godot_string* p_self, godot_string* p_file)

    godot_string godot_string_right(godot_string* p_self, godot_int p_pos)

    godot_string godot_string_strip_edges(godot_string* p_self, godot_bool p_left, godot_bool p_right)

    godot_string godot_string_strip_escapes(godot_string* p_self)

    void godot_string_erase(godot_string* p_self, godot_int p_pos, godot_int p_chars)

    godot_char_string godot_string_ascii(godot_string* p_self)

    godot_char_string godot_string_ascii_extended(godot_string* p_self)

    godot_char_string godot_string_utf8(godot_string* p_self)

    godot_bool godot_string_parse_utf8(godot_string* p_self, char* p_utf8)

    godot_bool godot_string_parse_utf8_with_len(godot_string* p_self, char* p_utf8, godot_int p_len)

    godot_string godot_string_chars_to_utf8(char* p_utf8)

    godot_string godot_string_chars_to_utf8_with_len(char* p_utf8, godot_int p_len)

    uint32_t godot_string_hash(godot_string* p_self)

    uint64_t godot_string_hash64(godot_string* p_self)

    uint32_t godot_string_hash_chars(char* p_cstr)

    uint32_t godot_string_hash_chars_with_len(char* p_cstr, godot_int p_len)

    uint32_t godot_string_hash_utf8_chars(wchar_t* p_str)

    uint32_t godot_string_hash_utf8_chars_with_len(wchar_t* p_str, godot_int p_len)

    godot_pool_byte_array godot_string_md5_buffer(godot_string* p_self)

    godot_string godot_string_md5_text(godot_string* p_self)

    godot_pool_byte_array godot_string_sha256_buffer(godot_string* p_self)

    godot_string godot_string_sha256_text(godot_string* p_self)

    godot_bool godot_string_empty(godot_string* p_self)

    godot_string godot_string_get_base_dir(godot_string* p_self)

    godot_string godot_string_get_file(godot_string* p_self)

    godot_string godot_string_humanize_size(size_t p_size)

    godot_bool godot_string_is_abs_path(godot_string* p_self)

    godot_bool godot_string_is_rel_path(godot_string* p_self)

    godot_bool godot_string_is_resource_file(godot_string* p_self)

    godot_string godot_string_path_to(godot_string* p_self, godot_string* p_path)

    godot_string godot_string_path_to_file(godot_string* p_self, godot_string* p_path)

    godot_string godot_string_simplify_path(godot_string* p_self)

    godot_string godot_string_c_escape(godot_string* p_self)

    godot_string godot_string_c_escape_multiline(godot_string* p_self)

    godot_string godot_string_c_unescape(godot_string* p_self)

    godot_string godot_string_http_escape(godot_string* p_self)

    godot_string godot_string_http_unescape(godot_string* p_self)

    godot_string godot_string_json_escape(godot_string* p_self)

    godot_string godot_string_word_wrap(godot_string* p_self, godot_int p_chars_per_line)

    godot_string godot_string_xml_escape(godot_string* p_self)

    godot_string godot_string_xml_escape_with_quotes(godot_string* p_self)

    godot_string godot_string_xml_unescape(godot_string* p_self)

    godot_string godot_string_percent_decode(godot_string* p_self)

    godot_string godot_string_percent_encode(godot_string* p_self)

    godot_bool godot_string_is_valid_float(godot_string* p_self)

    godot_bool godot_string_is_valid_hex_number(godot_string* p_self, godot_bool p_with_prefix)

    godot_bool godot_string_is_valid_html_color(godot_string* p_self)

    godot_bool godot_string_is_valid_identifier(godot_string* p_self)

    godot_bool godot_string_is_valid_integer(godot_string* p_self)

    godot_bool godot_string_is_valid_ip_address(godot_string* p_self)

    godot_string godot_string_dedent(godot_string* p_self)

    godot_string godot_string_trim_prefix(godot_string* p_self, godot_string* p_prefix)

    godot_string godot_string_trim_suffix(godot_string* p_self, godot_string* p_suffix)

    godot_string godot_string_rstrip(godot_string* p_self, godot_string* p_chars)

    godot_pool_string_array godot_string_rsplit(godot_string* p_self, godot_string* p_divisor, godot_bool p_allow_empty, godot_int p_maxsplit)

    void godot_string_destroy(godot_string* p_self)

    ctypedef struct godot_string_name:
        pass

    void godot_string_name_new(godot_string_name* r_dest, godot_string* p_name)

    void godot_string_name_new_data(godot_string_name* r_dest, char* p_name)

    godot_string godot_string_name_get_name(godot_string_name* p_self)

    uint32_t godot_string_name_get_hash(godot_string_name* p_self)

    void* godot_string_name_get_data_unique_pointer(godot_string_name* p_self)

    godot_bool godot_string_name_operator_equal(godot_string_name* p_self, godot_string_name* p_other)

    godot_bool godot_string_name_operator_less(godot_string_name* p_self, godot_string_name* p_other)

    void godot_string_name_destroy(godot_string_name* p_self)

    void godot_object_destroy(godot_object* p_o)

    godot_object* godot_global_get_singleton(char* p_name)

    ctypedef struct godot_method_bind:
        pass

    godot_method_bind* godot_method_bind_get_method(char* p_classname, char* p_methodname)

    void godot_method_bind_ptrcall(godot_method_bind* p_method_bind, godot_object* p_instance, void** p_args, void* p_ret)

    godot_variant godot_method_bind_call(godot_method_bind* p_method_bind, godot_object* p_instance, godot_variant** p_args, int p_arg_count, godot_variant_call_error* p_call_error)

    cdef struct godot_gdnative_api_version:
        unsigned int major
        unsigned int minor

    cdef struct godot_gdnative_api_struct:
        unsigned int type
        godot_gdnative_api_version version
        godot_gdnative_api_struct* next

    ctypedef void (*_godot_gdnative_init_options_godot_gdnative_init_options_report_version_mismatch_ft)(godot_object* p_library, char* p_what, godot_gdnative_api_version p_want, godot_gdnative_api_version p_have)

    ctypedef void (*_godot_gdnative_init_options_godot_gdnative_init_options_report_loading_error_ft)(godot_object* p_library, char* p_what)

    ctypedef struct godot_gdnative_init_options:
        godot_bool in_editor
        uint64_t core_api_hash
        uint64_t editor_api_hash
        uint64_t no_api_hash
        _godot_gdnative_init_options_godot_gdnative_init_options_report_version_mismatch_ft report_version_mismatch
        _godot_gdnative_init_options_godot_gdnative_init_options_report_loading_error_ft report_loading_error
        godot_object* gd_native_library
        godot_gdnative_core_api_struct* api_struct
        godot_string* active_library_path

    ctypedef struct godot_gdnative_terminate_options:
        godot_bool in_editor

    ctypedef godot_object* (*godot_class_constructor)()

    godot_class_constructor godot_get_class_constructor(char* p_classname)

    godot_dictionary godot_get_global_constants()

    ctypedef void (*godot_gdnative_init_fn)(godot_gdnative_init_options*)

    ctypedef void (*godot_gdnative_terminate_fn)(godot_gdnative_terminate_options*)

    ctypedef godot_variant (*godot_gdnative_procedure_fn)(godot_array*)

    ctypedef godot_variant (*native_call_cb)(void*, godot_array*)

    void godot_register_native_call_type(char* p_call_type, native_call_cb p_callback)

    void* godot_alloc(int p_bytes)

    void* godot_realloc(void* p_ptr, int p_bytes)

    void godot_free(void* p_ptr)

    void godot_print_error(char* p_description, char* p_function, char* p_file, int p_line)

    void godot_print_warning(char* p_description, char* p_function, char* p_file, int p_line)

    void godot_print(godot_string* p_message)

    bool godot_is_instance_valid(godot_object* p_object)

    void* godot_android_get_env()

    void* godot_android_get_activity()

    ctypedef void* (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_constructor_ft)(godot_object*)

    ctypedef void (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_destructor_ft)(void*)

    ctypedef godot_string (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_get_name_ft)(void*)

    ctypedef godot_int (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_get_capabilities_ft)(void*)

    ctypedef godot_bool (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_get_anchor_detection_is_enabled_ft)(void*)

    ctypedef void (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_set_anchor_detection_is_enabled_ft)(void*, godot_bool)

    ctypedef godot_bool (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_is_stereo_ft)(void*)

    ctypedef godot_bool (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_is_initialized_ft)(void*)

    ctypedef godot_bool (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_initialize_ft)(void*)

    ctypedef void (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_uninitialize_ft)(void*)

    ctypedef godot_vector2 (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_get_render_targetsize_ft)(void*)

    ctypedef godot_transform (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_get_transform_for_eye_ft)(void*, godot_int, godot_transform*)

    ctypedef void (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_fill_projection_for_eye_ft)(void*, godot_real*, godot_int, godot_real, godot_real, godot_real)

    ctypedef void (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_commit_for_eye_ft)(void*, godot_int, godot_rid*, godot_rect2*)

    ctypedef void (*_godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_process_ft)(void*)

    ctypedef struct godot_arvr_interface_gdnative:
        godot_gdnative_api_version version
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_constructor_ft constructor
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_destructor_ft destructor
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_get_name_ft get_name
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_get_capabilities_ft get_capabilities
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_get_anchor_detection_is_enabled_ft get_anchor_detection_is_enabled
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_set_anchor_detection_is_enabled_ft set_anchor_detection_is_enabled
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_is_stereo_ft is_stereo
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_is_initialized_ft is_initialized
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_initialize_ft initialize
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_uninitialize_ft uninitialize
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_get_render_targetsize_ft get_render_targetsize
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_get_transform_for_eye_ft get_transform_for_eye
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_fill_projection_for_eye_ft fill_projection_for_eye
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_commit_for_eye_ft commit_for_eye
        _godot_arvr_interface_gdnative_godot_arvr_interface_gdnative_process_ft process

    void godot_arvr_register_interface(godot_arvr_interface_gdnative* p_interface)

    godot_real godot_arvr_get_worldscale()

    godot_transform godot_arvr_get_reference_frame()

    void godot_arvr_blit(godot_int p_eye, godot_rid* p_render_target, godot_rect2* p_rect)

    godot_int godot_arvr_get_texid(godot_rid* p_render_target)

    godot_int godot_arvr_add_controller(char* p_device_name, godot_int p_hand, godot_bool p_tracks_orientation, godot_bool p_tracks_position)

    void godot_arvr_remove_controller(godot_int p_controller_id)

    void godot_arvr_set_controller_transform(godot_int p_controller_id, godot_transform* p_transform, godot_bool p_tracks_orientation, godot_bool p_tracks_position)

    void godot_arvr_set_controller_button(godot_int p_controller_id, godot_int p_button, godot_bool p_is_pressed)

    void godot_arvr_set_controller_axis(godot_int p_controller_id, godot_int p_axis, godot_real p_value, godot_bool p_can_be_negative)

    godot_real godot_arvr_get_controller_rumble(godot_int p_controller_id)

    ctypedef enum godot_method_rpc_mode:
        GODOT_METHOD_RPC_MODE_DISABLED
        GODOT_METHOD_RPC_MODE_REMOTE
        GODOT_METHOD_RPC_MODE_MASTER
        GODOT_METHOD_RPC_MODE_PUPPET
        GODOT_METHOD_RPC_MODE_SLAVE
        GODOT_METHOD_RPC_MODE_REMOTESYNC
        GODOT_METHOD_RPC_MODE_SYNC
        GODOT_METHOD_RPC_MODE_MASTERSYNC
        GODOT_METHOD_RPC_MODE_PUPPETSYNC

    ctypedef enum godot_property_hint:
        GODOT_PROPERTY_HINT_NONE
        GODOT_PROPERTY_HINT_RANGE
        GODOT_PROPERTY_HINT_EXP_RANGE
        GODOT_PROPERTY_HINT_ENUM
        GODOT_PROPERTY_HINT_EXP_EASING
        GODOT_PROPERTY_HINT_LENGTH
        GODOT_PROPERTY_HINT_SPRITE_FRAME
        GODOT_PROPERTY_HINT_KEY_ACCEL
        GODOT_PROPERTY_HINT_FLAGS
        GODOT_PROPERTY_HINT_LAYERS_2D_RENDER
        GODOT_PROPERTY_HINT_LAYERS_2D_PHYSICS
        GODOT_PROPERTY_HINT_LAYERS_3D_RENDER
        GODOT_PROPERTY_HINT_LAYERS_3D_PHYSICS
        GODOT_PROPERTY_HINT_FILE
        GODOT_PROPERTY_HINT_DIR
        GODOT_PROPERTY_HINT_GLOBAL_FILE
        GODOT_PROPERTY_HINT_GLOBAL_DIR
        GODOT_PROPERTY_HINT_RESOURCE_TYPE
        GODOT_PROPERTY_HINT_MULTILINE_TEXT
        GODOT_PROPERTY_HINT_PLACEHOLDER_TEXT
        GODOT_PROPERTY_HINT_COLOR_NO_ALPHA
        GODOT_PROPERTY_HINT_IMAGE_COMPRESS_LOSSY
        GODOT_PROPERTY_HINT_IMAGE_COMPRESS_LOSSLESS
        GODOT_PROPERTY_HINT_OBJECT_ID
        GODOT_PROPERTY_HINT_TYPE_STRING
        GODOT_PROPERTY_HINT_NODE_PATH_TO_EDITED_NODE
        GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE
        GODOT_PROPERTY_HINT_METHOD_OF_BASE_TYPE
        GODOT_PROPERTY_HINT_METHOD_OF_INSTANCE
        GODOT_PROPERTY_HINT_METHOD_OF_SCRIPT
        GODOT_PROPERTY_HINT_PROPERTY_OF_VARIANT_TYPE
        GODOT_PROPERTY_HINT_PROPERTY_OF_BASE_TYPE
        GODOT_PROPERTY_HINT_PROPERTY_OF_INSTANCE
        GODOT_PROPERTY_HINT_PROPERTY_OF_SCRIPT
        GODOT_PROPERTY_HINT_MAX

    ctypedef enum godot_property_usage_flags:
        GODOT_PROPERTY_USAGE_STORAGE
        GODOT_PROPERTY_USAGE_EDITOR
        GODOT_PROPERTY_USAGE_NETWORK
        GODOT_PROPERTY_USAGE_EDITOR_HELPER
        GODOT_PROPERTY_USAGE_CHECKABLE
        GODOT_PROPERTY_USAGE_CHECKED
        GODOT_PROPERTY_USAGE_INTERNATIONALIZED
        GODOT_PROPERTY_USAGE_GROUP
        GODOT_PROPERTY_USAGE_CATEGORY
        GODOT_PROPERTY_USAGE_STORE_IF_NONZERO
        GODOT_PROPERTY_USAGE_STORE_IF_NONONE
        GODOT_PROPERTY_USAGE_NO_INSTANCE_STATE
        GODOT_PROPERTY_USAGE_RESTART_IF_CHANGED
        GODOT_PROPERTY_USAGE_SCRIPT_VARIABLE
        GODOT_PROPERTY_USAGE_STORE_IF_NULL
        GODOT_PROPERTY_USAGE_ANIMATE_AS_TRIGGER
        GODOT_PROPERTY_USAGE_UPDATE_ALL_IF_MODIFIED
        GODOT_PROPERTY_USAGE_DEFAULT
        GODOT_PROPERTY_USAGE_DEFAULT_INTL
        GODOT_PROPERTY_USAGE_NOEDITOR

    ctypedef struct godot_property_attributes:
        godot_method_rpc_mode rset_type
        godot_int type
        godot_property_hint hint
        godot_string hint_string
        godot_property_usage_flags usage
        godot_variant default_value

    ctypedef void* (*_godot_instance_create_func_godot_instance_create_func_create_func_ft)(godot_object*, void*)

    ctypedef void (*_godot_instance_create_func_godot_instance_create_func_free_func_ft)(void*)

    ctypedef struct godot_instance_create_func:
        _godot_instance_create_func_godot_instance_create_func_create_func_ft create_func
        void* method_data
        _godot_instance_create_func_godot_instance_create_func_free_func_ft free_func

    ctypedef void (*_godot_instance_destroy_func_godot_instance_destroy_func_destroy_func_ft)(godot_object*, void*, void*)

    ctypedef void (*_godot_instance_destroy_func_godot_instance_destroy_func_free_func_ft)(void*)

    ctypedef struct godot_instance_destroy_func:
        _godot_instance_destroy_func_godot_instance_destroy_func_destroy_func_ft destroy_func
        void* method_data
        _godot_instance_destroy_func_godot_instance_destroy_func_free_func_ft free_func

    void godot_nativescript_register_class(void* p_gdnative_handle, char* p_name, char* p_base, godot_instance_create_func p_create_func, godot_instance_destroy_func p_destroy_func)

    void godot_nativescript_register_tool_class(void* p_gdnative_handle, char* p_name, char* p_base, godot_instance_create_func p_create_func, godot_instance_destroy_func p_destroy_func)

    ctypedef struct godot_method_attributes:
        godot_method_rpc_mode rpc_type

    ctypedef godot_variant (*_godot_instance_method_godot_instance_method_method_ft)(godot_object*, void*, void*, int, godot_variant**)

    ctypedef void (*_godot_instance_method_godot_instance_method_free_func_ft)(void*)

    ctypedef struct godot_instance_method:
        _godot_instance_method_godot_instance_method_method_ft method
        void* method_data
        _godot_instance_method_godot_instance_method_free_func_ft free_func

    void godot_nativescript_register_method(void* p_gdnative_handle, char* p_name, char* p_function_name, godot_method_attributes p_attr, godot_instance_method p_method)

    ctypedef void (*_godot_property_set_func_godot_property_set_func_set_func_ft)(godot_object*, void*, void*, godot_variant*)

    ctypedef void (*_godot_property_set_func_godot_property_set_func_free_func_ft)(void*)

    ctypedef struct godot_property_set_func:
        _godot_property_set_func_godot_property_set_func_set_func_ft set_func
        void* method_data
        _godot_property_set_func_godot_property_set_func_free_func_ft free_func

    ctypedef godot_variant (*_godot_property_get_func_godot_property_get_func_get_func_ft)(godot_object*, void*, void*)

    ctypedef void (*_godot_property_get_func_godot_property_get_func_free_func_ft)(void*)

    ctypedef struct godot_property_get_func:
        _godot_property_get_func_godot_property_get_func_get_func_ft get_func
        void* method_data
        _godot_property_get_func_godot_property_get_func_free_func_ft free_func

    void godot_nativescript_register_property(void* p_gdnative_handle, char* p_name, char* p_path, godot_property_attributes* p_attr, godot_property_set_func p_set_func, godot_property_get_func p_get_func)

    ctypedef struct godot_signal_argument:
        godot_string name
        godot_int type
        godot_property_hint hint
        godot_string hint_string
        godot_property_usage_flags usage
        godot_variant default_value

    ctypedef struct godot_signal:
        godot_string name
        int num_args
        godot_signal_argument* args
        int num_default_args
        godot_variant* default_args

    void godot_nativescript_register_signal(void* p_gdnative_handle, char* p_name, godot_signal* p_signal)

    void* godot_nativescript_get_userdata(godot_object* p_instance)

    ctypedef struct godot_method_arg:
        godot_string name
        godot_variant_type type
        godot_property_hint hint
        godot_string hint_string

    void godot_nativescript_set_method_argument_information(void* p_gdnative_handle, char* p_name, char* p_function_name, int p_num_args, godot_method_arg* p_args)

    void godot_nativescript_set_class_documentation(void* p_gdnative_handle, char* p_name, godot_string p_documentation)

    void godot_nativescript_set_method_documentation(void* p_gdnative_handle, char* p_name, char* p_function_name, godot_string p_documentation)

    void godot_nativescript_set_property_documentation(void* p_gdnative_handle, char* p_name, char* p_path, godot_string p_documentation)

    void godot_nativescript_set_signal_documentation(void* p_gdnative_handle, char* p_name, char* p_signal_name, godot_string p_documentation)

    void godot_nativescript_set_global_type_tag(int p_idx, char* p_name, void* p_type_tag)

    void* godot_nativescript_get_global_type_tag(int p_idx, char* p_name)

    void godot_nativescript_set_type_tag(void* p_gdnative_handle, char* p_name, void* p_type_tag)

    void* godot_nativescript_get_type_tag(godot_object* p_object)

    ctypedef void* (*_godot_instance_binding_functions_godot_instance_binding_functions_alloc_instance_binding_data_ft)(void*, void*, godot_object*)

    ctypedef void (*_godot_instance_binding_functions_godot_instance_binding_functions_free_instance_binding_data_ft)(void*, void*)

    ctypedef void (*_godot_instance_binding_functions_godot_instance_binding_functions_refcount_incremented_instance_binding_ft)(void*, godot_object*)

    ctypedef bool (*_godot_instance_binding_functions_godot_instance_binding_functions_refcount_decremented_instance_binding_ft)(void*, godot_object*)

    ctypedef void (*_godot_instance_binding_functions_godot_instance_binding_functions_free_func_ft)(void*)

    ctypedef struct godot_instance_binding_functions:
        _godot_instance_binding_functions_godot_instance_binding_functions_alloc_instance_binding_data_ft alloc_instance_binding_data
        _godot_instance_binding_functions_godot_instance_binding_functions_free_instance_binding_data_ft free_instance_binding_data
        _godot_instance_binding_functions_godot_instance_binding_functions_refcount_incremented_instance_binding_ft refcount_incremented_instance_binding
        _godot_instance_binding_functions_godot_instance_binding_functions_refcount_decremented_instance_binding_ft refcount_decremented_instance_binding
        void* data
        _godot_instance_binding_functions_godot_instance_binding_functions_free_func_ft free_func

    int godot_nativescript_register_instance_binding_data_functions(godot_instance_binding_functions p_binding_functions)

    void godot_nativescript_unregister_instance_binding_data_functions(int p_idx)

    void* godot_nativescript_get_instance_binding_data(int p_idx, godot_object* p_object)

    void godot_nativescript_profiling_add_data(char* p_signature, uint64_t p_time)

    ctypedef void godot_pluginscript_instance_data

    ctypedef void godot_pluginscript_script_data

    ctypedef void godot_pluginscript_language_data

    ctypedef godot_pluginscript_instance_data* (*_godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_init_ft)(godot_pluginscript_script_data* p_data, godot_object* p_owner)

    ctypedef void (*_godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_finish_ft)(godot_pluginscript_instance_data* p_data)

    ctypedef godot_bool (*_godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_set_prop_ft)(godot_pluginscript_instance_data* p_data, godot_string* p_name, godot_variant* p_value)

    ctypedef godot_bool (*_godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_get_prop_ft)(godot_pluginscript_instance_data* p_data, godot_string* p_name, godot_variant* r_ret)

    ctypedef godot_variant (*_godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_call_method_ft)(godot_pluginscript_instance_data* p_data, godot_string_name* p_method, godot_variant** p_args, int p_argcount, godot_variant_call_error* r_error)

    ctypedef void (*_godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_notification_ft)(godot_pluginscript_instance_data* p_data, int p_notification)

    ctypedef godot_method_rpc_mode (*_godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_get_rpc_mode_ft)(godot_pluginscript_instance_data* p_data, godot_string* p_method)

    ctypedef godot_method_rpc_mode (*_godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_get_rset_mode_ft)(godot_pluginscript_instance_data* p_data, godot_string* p_variable)

    ctypedef void (*_godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_refcount_incremented_ft)(godot_pluginscript_instance_data* p_data)

    ctypedef bool (*_godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_refcount_decremented_ft)(godot_pluginscript_instance_data* p_data)

    ctypedef struct godot_pluginscript_instance_desc:
        _godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_init_ft init
        _godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_finish_ft finish
        _godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_set_prop_ft set_prop
        _godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_get_prop_ft get_prop
        _godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_call_method_ft call_method
        _godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_notification_ft notification
        _godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_get_rpc_mode_ft get_rpc_mode
        _godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_get_rset_mode_ft get_rset_mode
        _godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_refcount_incremented_ft refcount_incremented
        _godot_pluginscript_instance_desc_godot_pluginscript_instance_desc_refcount_decremented_ft refcount_decremented

    ctypedef struct godot_pluginscript_script_manifest:
        godot_pluginscript_script_data* data
        godot_string_name name
        godot_bool is_tool
        godot_string_name base
        godot_dictionary member_lines
        godot_array methods
        godot_array signals
        godot_array properties

    ctypedef godot_pluginscript_script_manifest (*_godot_pluginscript_script_desc_godot_pluginscript_script_desc_init_ft)(godot_pluginscript_language_data* p_data, godot_string* p_path, godot_string* p_source, godot_error* r_error)

    ctypedef void (*_godot_pluginscript_script_desc_godot_pluginscript_script_desc_finish_ft)(godot_pluginscript_script_data* p_data)

    ctypedef struct godot_pluginscript_script_desc:
        _godot_pluginscript_script_desc_godot_pluginscript_script_desc_init_ft init
        _godot_pluginscript_script_desc_godot_pluginscript_script_desc_finish_ft finish
        godot_pluginscript_instance_desc instance_desc

    ctypedef struct godot_pluginscript_profiling_data:
        godot_string_name signature
        godot_int call_count
        godot_int total_time
        godot_int self_time

    ctypedef godot_pluginscript_language_data* (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_init_ft)()

    ctypedef void (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_finish_ft)(godot_pluginscript_language_data* p_data)

    ctypedef godot_string (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_get_template_source_code_ft)(godot_pluginscript_language_data* p_data, godot_string* p_class_name, godot_string* p_base_class_name)

    ctypedef godot_bool (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_validate_ft)(godot_pluginscript_language_data* p_data, godot_string* p_script, int* r_line_error, int* r_col_error, godot_string* r_test_error, godot_string* p_path, godot_pool_string_array* r_functions)

    ctypedef int (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_find_function_ft)(godot_pluginscript_language_data* p_data, godot_string* p_function, godot_string* p_code)

    ctypedef godot_string (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_make_function_ft)(godot_pluginscript_language_data* p_data, godot_string* p_class, godot_string* p_name, godot_pool_string_array* p_args)

    ctypedef godot_error (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_complete_code_ft)(godot_pluginscript_language_data* p_data, godot_string* p_code, godot_string* p_base_path, godot_object* p_owner, godot_array* r_options, godot_bool* r_force, godot_string* r_call_hint)

    ctypedef void (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_auto_indent_code_ft)(godot_pluginscript_language_data* p_data, godot_string* p_code, int p_from_line, int p_to_line)

    ctypedef void (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_add_global_constant_ft)(godot_pluginscript_language_data* p_data, godot_string* p_variable, godot_variant* p_value)

    ctypedef godot_string (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_error_ft)(godot_pluginscript_language_data* p_data)

    ctypedef int (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_stack_level_count_ft)(godot_pluginscript_language_data* p_data)

    ctypedef int (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_stack_level_line_ft)(godot_pluginscript_language_data* p_data, int p_level)

    ctypedef godot_string (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_stack_level_function_ft)(godot_pluginscript_language_data* p_data, int p_level)

    ctypedef godot_string (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_stack_level_source_ft)(godot_pluginscript_language_data* p_data, int p_level)

    ctypedef void (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_stack_level_locals_ft)(godot_pluginscript_language_data* p_data, int p_level, godot_pool_string_array* p_locals, godot_array* p_values, int p_max_subitems, int p_max_depth)

    ctypedef void (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_stack_level_members_ft)(godot_pluginscript_language_data* p_data, int p_level, godot_pool_string_array* p_members, godot_array* p_values, int p_max_subitems, int p_max_depth)

    ctypedef void (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_globals_ft)(godot_pluginscript_language_data* p_data, godot_pool_string_array* p_locals, godot_array* p_values, int p_max_subitems, int p_max_depth)

    ctypedef godot_string (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_parse_stack_level_expression_ft)(godot_pluginscript_language_data* p_data, int p_level, godot_string* p_expression, int p_max_subitems, int p_max_depth)

    ctypedef void (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_get_public_functions_ft)(godot_pluginscript_language_data* p_data, godot_array* r_functions)

    ctypedef void (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_get_public_constants_ft)(godot_pluginscript_language_data* p_data, godot_dictionary* r_constants)

    ctypedef void (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_profiling_start_ft)(godot_pluginscript_language_data* p_data)

    ctypedef void (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_profiling_stop_ft)(godot_pluginscript_language_data* p_data)

    ctypedef int (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_profiling_get_accumulated_data_ft)(godot_pluginscript_language_data* p_data, godot_pluginscript_profiling_data* r_info, int p_info_max)

    ctypedef int (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_profiling_get_frame_data_ft)(godot_pluginscript_language_data* p_data, godot_pluginscript_profiling_data* r_info, int p_info_max)

    ctypedef void (*_godot_pluginscript_language_desc_godot_pluginscript_language_desc_profiling_frame_ft)(godot_pluginscript_language_data* p_data)

    ctypedef struct godot_pluginscript_language_desc:
        char* name
        char* type
        char* extension
        char** recognized_extensions
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_init_ft init
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_finish_ft finish
        char** reserved_words
        char** comment_delimiters
        char** string_delimiters
        godot_bool has_named_classes
        godot_bool supports_builtin_mode
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_get_template_source_code_ft get_template_source_code
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_validate_ft validate
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_find_function_ft find_function
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_make_function_ft make_function
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_complete_code_ft complete_code
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_auto_indent_code_ft auto_indent_code
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_add_global_constant_ft add_global_constant
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_error_ft debug_get_error
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_stack_level_count_ft debug_get_stack_level_count
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_stack_level_line_ft debug_get_stack_level_line
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_stack_level_function_ft debug_get_stack_level_function
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_stack_level_source_ft debug_get_stack_level_source
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_stack_level_locals_ft debug_get_stack_level_locals
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_stack_level_members_ft debug_get_stack_level_members
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_get_globals_ft debug_get_globals
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_debug_parse_stack_level_expression_ft debug_parse_stack_level_expression
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_get_public_functions_ft get_public_functions
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_get_public_constants_ft get_public_constants
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_profiling_start_ft profiling_start
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_profiling_stop_ft profiling_stop
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_profiling_get_accumulated_data_ft profiling_get_accumulated_data
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_profiling_get_frame_data_ft profiling_get_frame_data
        _godot_pluginscript_language_desc_godot_pluginscript_language_desc_profiling_frame_ft profiling_frame
        godot_pluginscript_script_desc script_desc

    void godot_pluginscript_register_language(godot_pluginscript_language_desc* language_desc)

    cdef enum GDNATIVE_API_TYPES:
        GDNATIVE_CORE
        GDNATIVE_EXT_NATIVESCRIPT
        GDNATIVE_EXT_PLUGINSCRIPT
        GDNATIVE_EXT_ANDROID
        GDNATIVE_EXT_ARVR

    ctypedef void (*_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_method_argument_information_ft)(void* p_gdnative_handle, char* p_name, char* p_function_name, int p_num_args, godot_method_arg* p_args)

    ctypedef void (*_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_class_documentation_ft)(void* p_gdnative_handle, char* p_name, godot_string p_documentation)

    ctypedef void (*_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_method_documentation_ft)(void* p_gdnative_handle, char* p_name, char* p_function_name, godot_string p_documentation)

    ctypedef void (*_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_property_documentation_ft)(void* p_gdnative_handle, char* p_name, char* p_path, godot_string p_documentation)

    ctypedef void (*_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_signal_documentation_ft)(void* p_gdnative_handle, char* p_name, char* p_signal_name, godot_string p_documentation)

    ctypedef void (*_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_global_type_tag_ft)(int p_idx, char* p_name, void* p_type_tag)

    ctypedef void* (*_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_get_global_type_tag_ft)(int p_idx, char* p_name)

    ctypedef void (*_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_type_tag_ft)(void* p_gdnative_handle, char* p_name, void* p_type_tag)

    ctypedef void* (*_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_get_type_tag_ft)(godot_object* p_object)

    ctypedef int (*_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_register_instance_binding_data_functions_ft)(godot_instance_binding_functions p_binding_functions)

    ctypedef void (*_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_unregister_instance_binding_data_functions_ft)(int p_idx)

    ctypedef void* (*_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_get_instance_binding_data_ft)(int p_idx, godot_object* p_object)

    ctypedef void (*_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_profiling_add_data_ft)(char* p_signature, uint64_t p_line)

    cdef struct godot_gdnative_ext_nativescript_1_1_api_struct:
        unsigned int type
        godot_gdnative_api_version version
        godot_gdnative_api_struct* next
        _godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_method_argument_information_ft godot_nativescript_set_method_argument_information
        _godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_class_documentation_ft godot_nativescript_set_class_documentation
        _godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_method_documentation_ft godot_nativescript_set_method_documentation
        _godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_property_documentation_ft godot_nativescript_set_property_documentation
        _godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_signal_documentation_ft godot_nativescript_set_signal_documentation
        _godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_global_type_tag_ft godot_nativescript_set_global_type_tag
        _godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_get_global_type_tag_ft godot_nativescript_get_global_type_tag
        _godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_set_type_tag_ft godot_nativescript_set_type_tag
        _godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_get_type_tag_ft godot_nativescript_get_type_tag
        _godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_register_instance_binding_data_functions_ft godot_nativescript_register_instance_binding_data_functions
        _godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_unregister_instance_binding_data_functions_ft godot_nativescript_unregister_instance_binding_data_functions
        _godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_get_instance_binding_data_ft godot_nativescript_get_instance_binding_data
        _godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_gdnative_ext_nativescript_1_1_api_struct_godot_nativescript_profiling_add_data_ft godot_nativescript_profiling_add_data

    ctypedef void (*_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_nativescript_register_class_ft)(void* p_gdnative_handle, char* p_name, char* p_base, godot_instance_create_func p_create_func, godot_instance_destroy_func p_destroy_func)

    ctypedef void (*_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_nativescript_register_tool_class_ft)(void* p_gdnative_handle, char* p_name, char* p_base, godot_instance_create_func p_create_func, godot_instance_destroy_func p_destroy_func)

    ctypedef void (*_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_nativescript_register_method_ft)(void* p_gdnative_handle, char* p_name, char* p_function_name, godot_method_attributes p_attr, godot_instance_method p_method)

    ctypedef void (*_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_nativescript_register_property_ft)(void* p_gdnative_handle, char* p_name, char* p_path, godot_property_attributes* p_attr, godot_property_set_func p_set_func, godot_property_get_func p_get_func)

    ctypedef void (*_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_nativescript_register_signal_ft)(void* p_gdnative_handle, char* p_name, godot_signal* p_signal)

    ctypedef void* (*_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_nativescript_get_userdata_ft)(godot_object* p_instance)

    cdef struct godot_gdnative_ext_nativescript_api_struct:
        unsigned int type
        godot_gdnative_api_version version
        godot_gdnative_api_struct* next
        _godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_nativescript_register_class_ft godot_nativescript_register_class
        _godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_nativescript_register_tool_class_ft godot_nativescript_register_tool_class
        _godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_nativescript_register_method_ft godot_nativescript_register_method
        _godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_nativescript_register_property_ft godot_nativescript_register_property
        _godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_nativescript_register_signal_ft godot_nativescript_register_signal
        _godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_gdnative_ext_nativescript_api_struct_godot_nativescript_get_userdata_ft godot_nativescript_get_userdata

    ctypedef void (*_godot_gdnative_ext_pluginscript_api_struct_godot_gdnative_ext_pluginscript_api_struct_godot_gdnative_ext_pluginscript_api_struct_godot_pluginscript_register_language_ft)(godot_pluginscript_language_desc* language_desc)

    cdef struct godot_gdnative_ext_pluginscript_api_struct:
        unsigned int type
        godot_gdnative_api_version version
        godot_gdnative_api_struct* next
        _godot_gdnative_ext_pluginscript_api_struct_godot_gdnative_ext_pluginscript_api_struct_godot_gdnative_ext_pluginscript_api_struct_godot_pluginscript_register_language_ft godot_pluginscript_register_language

    ctypedef void* (*_godot_gdnative_ext_android_api_struct_godot_gdnative_ext_android_api_struct_godot_gdnative_ext_android_api_struct_godot_android_get_env_ft)()

    ctypedef void* (*_godot_gdnative_ext_android_api_struct_godot_gdnative_ext_android_api_struct_godot_gdnative_ext_android_api_struct_godot_android_get_activity_ft)()

    cdef struct godot_gdnative_ext_android_api_struct:
        unsigned int type
        godot_gdnative_api_version version
        godot_gdnative_api_struct* next
        _godot_gdnative_ext_android_api_struct_godot_gdnative_ext_android_api_struct_godot_gdnative_ext_android_api_struct_godot_android_get_env_ft godot_android_get_env
        _godot_gdnative_ext_android_api_struct_godot_gdnative_ext_android_api_struct_godot_gdnative_ext_android_api_struct_godot_android_get_activity_ft godot_android_get_activity

    ctypedef void (*_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_register_interface_ft)(godot_arvr_interface_gdnative* p_interface)

    ctypedef godot_real (*_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_get_worldscale_ft)()

    ctypedef godot_transform (*_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_get_reference_frame_ft)()

    ctypedef void (*_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_blit_ft)(int p_eye, godot_rid* p_render_target, godot_rect2* p_screen_rect)

    ctypedef godot_int (*_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_get_texid_ft)(godot_rid* p_render_target)

    ctypedef godot_int (*_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_add_controller_ft)(char* p_device_name, godot_int p_hand, godot_bool p_tracks_orientation, godot_bool p_tracks_position)

    ctypedef void (*_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_remove_controller_ft)(godot_int p_controller_id)

    ctypedef void (*_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_set_controller_transform_ft)(godot_int p_controller_id, godot_transform* p_transform, godot_bool p_tracks_orientation, godot_bool p_tracks_position)

    ctypedef void (*_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_set_controller_button_ft)(godot_int p_controller_id, godot_int p_button, godot_bool p_is_pressed)

    ctypedef void (*_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_set_controller_axis_ft)(godot_int p_controller_id, godot_int p_exis, godot_real p_value, godot_bool p_can_be_negative)

    ctypedef godot_real (*_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_get_controller_rumble_ft)(godot_int p_controller_id)

    cdef struct godot_gdnative_ext_arvr_api_struct:
        unsigned int type
        godot_gdnative_api_version version
        godot_gdnative_api_struct* next
        _godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_register_interface_ft godot_arvr_register_interface
        _godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_get_worldscale_ft godot_arvr_get_worldscale
        _godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_get_reference_frame_ft godot_arvr_get_reference_frame
        _godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_blit_ft godot_arvr_blit
        _godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_get_texid_ft godot_arvr_get_texid
        _godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_add_controller_ft godot_arvr_add_controller
        _godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_remove_controller_ft godot_arvr_remove_controller
        _godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_set_controller_transform_ft godot_arvr_set_controller_transform
        _godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_set_controller_button_ft godot_arvr_set_controller_button
        _godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_set_controller_axis_ft godot_arvr_set_controller_axis
        _godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_gdnative_ext_arvr_api_struct_godot_arvr_get_controller_rumble_ft godot_arvr_get_controller_rumble

    ctypedef godot_int (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_to_abgr32_ft)(godot_color* p_self)

    ctypedef godot_int (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_to_abgr64_ft)(godot_color* p_self)

    ctypedef godot_int (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_to_argb64_ft)(godot_color* p_self)

    ctypedef godot_int (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_to_rgba64_ft)(godot_color* p_self)

    ctypedef godot_color (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_darkened_ft)(godot_color* p_self, godot_real p_amount)

    ctypedef godot_color (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_from_hsv_ft)(godot_color* p_self, godot_real p_h, godot_real p_s, godot_real p_v, godot_real p_a)

    ctypedef godot_color (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_lightened_ft)(godot_color* p_self, godot_real p_amount)

    ctypedef godot_array (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_array_duplicate_ft)(godot_array* p_self, godot_bool p_deep)

    ctypedef godot_variant (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_array_max_ft)(godot_array* p_self)

    ctypedef godot_variant (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_array_min_ft)(godot_array* p_self)

    ctypedef void (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_array_shuffle_ft)(godot_array* p_self)

    ctypedef godot_basis (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_basis_slerp_ft)(godot_basis* p_self, godot_basis* p_b, godot_real p_t)

    ctypedef godot_node_path (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_node_path_get_as_property_path_ft)(godot_node_path* p_self)

    ctypedef void (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_quat_set_axis_angle_ft)(godot_quat* p_self, godot_vector3* p_axis, godot_real p_angle)

    ctypedef godot_rect2 (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_rect2_grow_individual_ft)(godot_rect2* p_self, godot_real p_left, godot_real p_top, godot_real p_right, godot_real p_bottom)

    ctypedef godot_rect2 (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_rect2_grow_margin_ft)(godot_rect2* p_self, godot_int p_margin, godot_real p_by)

    ctypedef godot_rect2 (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_rect2_abs_ft)(godot_rect2* p_self)

    ctypedef godot_string (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_string_dedent_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_string_trim_prefix_ft)(godot_string* p_self, godot_string* p_prefix)

    ctypedef godot_string (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_string_trim_suffix_ft)(godot_string* p_self, godot_string* p_suffix)

    ctypedef godot_string (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_string_rstrip_ft)(godot_string* p_self, godot_string* p_chars)

    ctypedef godot_pool_string_array (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_string_rsplit_ft)(godot_string* p_self, godot_string* p_divisor, godot_bool p_allow_empty, godot_int p_maxsplit)

    ctypedef godot_quat (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_basis_get_quat_ft)(godot_basis* p_self)

    ctypedef void (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_basis_set_quat_ft)(godot_basis* p_self, godot_quat* p_quat)

    ctypedef void (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_basis_set_axis_angle_scale_ft)(godot_basis* p_self, godot_vector3* p_axis, godot_real p_phi, godot_vector3* p_scale)

    ctypedef void (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_basis_set_euler_scale_ft)(godot_basis* p_self, godot_vector3* p_euler, godot_vector3* p_scale)

    ctypedef void (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_basis_set_quat_scale_ft)(godot_basis* p_self, godot_quat* p_quat, godot_vector3* p_scale)

    ctypedef bool (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_dictionary_erase_with_return_ft)(godot_dictionary* p_self, godot_variant* p_key)

    ctypedef bool (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_is_instance_valid_ft)(godot_object* p_object)

    ctypedef void (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_quat_new_with_basis_ft)(godot_quat* r_dest, godot_basis* p_basis)

    ctypedef void (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_quat_new_with_euler_ft)(godot_quat* r_dest, godot_vector3* p_euler)

    ctypedef void (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_transform_new_with_quat_ft)(godot_transform* r_dest, godot_quat* p_quat)

    ctypedef godot_string (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_variant_get_operator_name_ft)(godot_variant_operator p_op)

    ctypedef void (*_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_variant_evaluate_ft)(godot_variant_operator p_op, godot_variant* p_a, godot_variant* p_b, godot_variant* r_ret, godot_bool* r_valid)

    cdef struct godot_gdnative_core_1_1_api_struct:
        unsigned int type
        godot_gdnative_api_version version
        godot_gdnative_api_struct* next
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_to_abgr32_ft godot_color_to_abgr32
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_to_abgr64_ft godot_color_to_abgr64
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_to_argb64_ft godot_color_to_argb64
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_to_rgba64_ft godot_color_to_rgba64
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_darkened_ft godot_color_darkened
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_from_hsv_ft godot_color_from_hsv
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_color_lightened_ft godot_color_lightened
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_array_duplicate_ft godot_array_duplicate
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_array_max_ft godot_array_max
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_array_min_ft godot_array_min
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_array_shuffle_ft godot_array_shuffle
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_basis_slerp_ft godot_basis_slerp
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_node_path_get_as_property_path_ft godot_node_path_get_as_property_path
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_quat_set_axis_angle_ft godot_quat_set_axis_angle
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_rect2_grow_individual_ft godot_rect2_grow_individual
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_rect2_grow_margin_ft godot_rect2_grow_margin
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_rect2_abs_ft godot_rect2_abs
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_string_dedent_ft godot_string_dedent
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_string_trim_prefix_ft godot_string_trim_prefix
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_string_trim_suffix_ft godot_string_trim_suffix
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_string_rstrip_ft godot_string_rstrip
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_string_rsplit_ft godot_string_rsplit
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_basis_get_quat_ft godot_basis_get_quat
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_basis_set_quat_ft godot_basis_set_quat
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_basis_set_axis_angle_scale_ft godot_basis_set_axis_angle_scale
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_basis_set_euler_scale_ft godot_basis_set_euler_scale
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_basis_set_quat_scale_ft godot_basis_set_quat_scale
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_dictionary_erase_with_return_ft godot_dictionary_erase_with_return
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_is_instance_valid_ft godot_is_instance_valid
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_quat_new_with_basis_ft godot_quat_new_with_basis
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_quat_new_with_euler_ft godot_quat_new_with_euler
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_transform_new_with_quat_ft godot_transform_new_with_quat
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_variant_get_operator_name_ft godot_variant_get_operator_name
        _godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_gdnative_core_1_1_api_struct_godot_variant_evaluate_ft godot_variant_evaluate

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_new_rgba_ft)(godot_color* r_dest, godot_real p_r, godot_real p_g, godot_real p_b, godot_real p_a)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_new_rgb_ft)(godot_color* r_dest, godot_real p_r, godot_real p_g, godot_real p_b)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_r_ft)(godot_color* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_set_r_ft)(godot_color* p_self, godot_real r)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_g_ft)(godot_color* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_set_g_ft)(godot_color* p_self, godot_real g)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_b_ft)(godot_color* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_set_b_ft)(godot_color* p_self, godot_real b)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_a_ft)(godot_color* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_set_a_ft)(godot_color* p_self, godot_real a)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_h_ft)(godot_color* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_s_ft)(godot_color* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_v_ft)(godot_color* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_as_string_ft)(godot_color* p_self)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_to_rgba32_ft)(godot_color* p_self)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_to_argb32_ft)(godot_color* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_gray_ft)(godot_color* p_self)

    ctypedef godot_color (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_inverted_ft)(godot_color* p_self)

    ctypedef godot_color (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_contrasted_ft)(godot_color* p_self)

    ctypedef godot_color (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_linear_interpolate_ft)(godot_color* p_self, godot_color* p_b, godot_real p_t)

    ctypedef godot_color (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_blend_ft)(godot_color* p_self, godot_color* p_over)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_to_html_ft)(godot_color* p_self, godot_bool p_with_alpha)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_operator_equal_ft)(godot_color* p_self, godot_color* p_b)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_operator_less_ft)(godot_color* p_self, godot_color* p_b)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_new_ft)(godot_vector2* r_dest, godot_real p_x, godot_real p_y)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_as_string_ft)(godot_vector2* p_self)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_normalized_ft)(godot_vector2* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_length_ft)(godot_vector2* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_angle_ft)(godot_vector2* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_length_squared_ft)(godot_vector2* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_is_normalized_ft)(godot_vector2* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_distance_to_ft)(godot_vector2* p_self, godot_vector2* p_to)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_distance_squared_to_ft)(godot_vector2* p_self, godot_vector2* p_to)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_angle_to_ft)(godot_vector2* p_self, godot_vector2* p_to)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_angle_to_point_ft)(godot_vector2* p_self, godot_vector2* p_to)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_linear_interpolate_ft)(godot_vector2* p_self, godot_vector2* p_b, godot_real p_t)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_cubic_interpolate_ft)(godot_vector2* p_self, godot_vector2* p_b, godot_vector2* p_pre_a, godot_vector2* p_post_b, godot_real p_t)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_rotated_ft)(godot_vector2* p_self, godot_real p_phi)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_tangent_ft)(godot_vector2* p_self)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_floor_ft)(godot_vector2* p_self)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_snapped_ft)(godot_vector2* p_self, godot_vector2* p_by)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_aspect_ft)(godot_vector2* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_dot_ft)(godot_vector2* p_self, godot_vector2* p_with)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_slide_ft)(godot_vector2* p_self, godot_vector2* p_n)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_bounce_ft)(godot_vector2* p_self, godot_vector2* p_n)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_reflect_ft)(godot_vector2* p_self, godot_vector2* p_n)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_abs_ft)(godot_vector2* p_self)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_clamped_ft)(godot_vector2* p_self, godot_real p_length)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_add_ft)(godot_vector2* p_self, godot_vector2* p_b)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_subtract_ft)(godot_vector2* p_self, godot_vector2* p_b)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_multiply_vector_ft)(godot_vector2* p_self, godot_vector2* p_b)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_multiply_scalar_ft)(godot_vector2* p_self, godot_real p_b)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_divide_vector_ft)(godot_vector2* p_self, godot_vector2* p_b)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_divide_scalar_ft)(godot_vector2* p_self, godot_real p_b)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_equal_ft)(godot_vector2* p_self, godot_vector2* p_b)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_less_ft)(godot_vector2* p_self, godot_vector2* p_b)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_neg_ft)(godot_vector2* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_set_x_ft)(godot_vector2* p_self, godot_real p_x)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_set_y_ft)(godot_vector2* p_self, godot_real p_y)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_get_x_ft)(godot_vector2* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_get_y_ft)(godot_vector2* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_new_ft)(godot_quat* r_dest, godot_real p_x, godot_real p_y, godot_real p_z, godot_real p_w)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_new_with_axis_angle_ft)(godot_quat* r_dest, godot_vector3* p_axis, godot_real p_angle)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_get_x_ft)(godot_quat* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_set_x_ft)(godot_quat* p_self, godot_real val)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_get_y_ft)(godot_quat* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_set_y_ft)(godot_quat* p_self, godot_real val)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_get_z_ft)(godot_quat* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_set_z_ft)(godot_quat* p_self, godot_real val)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_get_w_ft)(godot_quat* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_set_w_ft)(godot_quat* p_self, godot_real val)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_as_string_ft)(godot_quat* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_length_ft)(godot_quat* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_length_squared_ft)(godot_quat* p_self)

    ctypedef godot_quat (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_normalized_ft)(godot_quat* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_is_normalized_ft)(godot_quat* p_self)

    ctypedef godot_quat (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_inverse_ft)(godot_quat* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_dot_ft)(godot_quat* p_self, godot_quat* p_b)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_xform_ft)(godot_quat* p_self, godot_vector3* p_v)

    ctypedef godot_quat (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_slerp_ft)(godot_quat* p_self, godot_quat* p_b, godot_real p_t)

    ctypedef godot_quat (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_slerpni_ft)(godot_quat* p_self, godot_quat* p_b, godot_real p_t)

    ctypedef godot_quat (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_cubic_slerp_ft)(godot_quat* p_self, godot_quat* p_b, godot_quat* p_pre_a, godot_quat* p_post_b, godot_real p_t)

    ctypedef godot_quat (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_operator_multiply_ft)(godot_quat* p_self, godot_real p_b)

    ctypedef godot_quat (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_operator_add_ft)(godot_quat* p_self, godot_quat* p_b)

    ctypedef godot_quat (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_operator_subtract_ft)(godot_quat* p_self, godot_quat* p_b)

    ctypedef godot_quat (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_operator_divide_ft)(godot_quat* p_self, godot_real p_b)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_operator_equal_ft)(godot_quat* p_self, godot_quat* p_b)

    ctypedef godot_quat (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_operator_neg_ft)(godot_quat* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_new_with_rows_ft)(godot_basis* r_dest, godot_vector3* p_x_axis, godot_vector3* p_y_axis, godot_vector3* p_z_axis)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_new_with_axis_and_angle_ft)(godot_basis* r_dest, godot_vector3* p_axis, godot_real p_phi)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_new_with_euler_ft)(godot_basis* r_dest, godot_vector3* p_euler)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_as_string_ft)(godot_basis* p_self)

    ctypedef godot_basis (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_inverse_ft)(godot_basis* p_self)

    ctypedef godot_basis (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_transposed_ft)(godot_basis* p_self)

    ctypedef godot_basis (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_orthonormalized_ft)(godot_basis* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_determinant_ft)(godot_basis* p_self)

    ctypedef godot_basis (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_rotated_ft)(godot_basis* p_self, godot_vector3* p_axis, godot_real p_phi)

    ctypedef godot_basis (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_scaled_ft)(godot_basis* p_self, godot_vector3* p_scale)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_get_scale_ft)(godot_basis* p_self)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_get_euler_ft)(godot_basis* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_tdotx_ft)(godot_basis* p_self, godot_vector3* p_with)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_tdoty_ft)(godot_basis* p_self, godot_vector3* p_with)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_tdotz_ft)(godot_basis* p_self, godot_vector3* p_with)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_xform_ft)(godot_basis* p_self, godot_vector3* p_v)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_xform_inv_ft)(godot_basis* p_self, godot_vector3* p_v)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_get_orthogonal_index_ft)(godot_basis* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_new_ft)(godot_basis* r_dest)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_new_with_euler_quat_ft)(godot_basis* r_dest, godot_quat* p_euler)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_get_elements_ft)(godot_basis* p_self, godot_vector3* p_elements)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_get_axis_ft)(godot_basis* p_self, godot_int p_axis)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_set_axis_ft)(godot_basis* p_self, godot_int p_axis, godot_vector3* p_value)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_get_row_ft)(godot_basis* p_self, godot_int p_row)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_set_row_ft)(godot_basis* p_self, godot_int p_row, godot_vector3* p_value)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_operator_equal_ft)(godot_basis* p_self, godot_basis* p_b)

    ctypedef godot_basis (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_operator_add_ft)(godot_basis* p_self, godot_basis* p_b)

    ctypedef godot_basis (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_operator_subtract_ft)(godot_basis* p_self, godot_basis* p_b)

    ctypedef godot_basis (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_operator_multiply_vector_ft)(godot_basis* p_self, godot_basis* p_b)

    ctypedef godot_basis (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_operator_multiply_scalar_ft)(godot_basis* p_self, godot_real p_b)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_new_ft)(godot_vector3* r_dest, godot_real p_x, godot_real p_y, godot_real p_z)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_as_string_ft)(godot_vector3* p_self)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_min_axis_ft)(godot_vector3* p_self)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_max_axis_ft)(godot_vector3* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_length_ft)(godot_vector3* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_length_squared_ft)(godot_vector3* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_is_normalized_ft)(godot_vector3* p_self)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_normalized_ft)(godot_vector3* p_self)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_inverse_ft)(godot_vector3* p_self)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_snapped_ft)(godot_vector3* p_self, godot_vector3* p_by)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_rotated_ft)(godot_vector3* p_self, godot_vector3* p_axis, godot_real p_phi)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_linear_interpolate_ft)(godot_vector3* p_self, godot_vector3* p_b, godot_real p_t)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_cubic_interpolate_ft)(godot_vector3* p_self, godot_vector3* p_b, godot_vector3* p_pre_a, godot_vector3* p_post_b, godot_real p_t)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_dot_ft)(godot_vector3* p_self, godot_vector3* p_b)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_cross_ft)(godot_vector3* p_self, godot_vector3* p_b)

    ctypedef godot_basis (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_outer_ft)(godot_vector3* p_self, godot_vector3* p_b)

    ctypedef godot_basis (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_to_diagonal_matrix_ft)(godot_vector3* p_self)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_abs_ft)(godot_vector3* p_self)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_floor_ft)(godot_vector3* p_self)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_ceil_ft)(godot_vector3* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_distance_to_ft)(godot_vector3* p_self, godot_vector3* p_b)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_distance_squared_to_ft)(godot_vector3* p_self, godot_vector3* p_b)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_angle_to_ft)(godot_vector3* p_self, godot_vector3* p_to)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_slide_ft)(godot_vector3* p_self, godot_vector3* p_n)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_bounce_ft)(godot_vector3* p_self, godot_vector3* p_n)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_reflect_ft)(godot_vector3* p_self, godot_vector3* p_n)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_add_ft)(godot_vector3* p_self, godot_vector3* p_b)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_subtract_ft)(godot_vector3* p_self, godot_vector3* p_b)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_multiply_vector_ft)(godot_vector3* p_self, godot_vector3* p_b)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_multiply_scalar_ft)(godot_vector3* p_self, godot_real p_b)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_divide_vector_ft)(godot_vector3* p_self, godot_vector3* p_b)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_divide_scalar_ft)(godot_vector3* p_self, godot_real p_b)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_equal_ft)(godot_vector3* p_self, godot_vector3* p_b)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_less_ft)(godot_vector3* p_self, godot_vector3* p_b)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_neg_ft)(godot_vector3* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_set_axis_ft)(godot_vector3* p_self, godot_vector3_axis p_axis, godot_real p_val)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_get_axis_ft)(godot_vector3* p_self, godot_vector3_axis p_axis)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_new_ft)(godot_pool_byte_array* r_dest)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_new_copy_ft)(godot_pool_byte_array* r_dest, godot_pool_byte_array* p_src)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_new_with_array_ft)(godot_pool_byte_array* r_dest, godot_array* p_a)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_append_ft)(godot_pool_byte_array* p_self, uint8_t p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_append_array_ft)(godot_pool_byte_array* p_self, godot_pool_byte_array* p_array)

    ctypedef godot_error (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_insert_ft)(godot_pool_byte_array* p_self, godot_int p_idx, uint8_t p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_invert_ft)(godot_pool_byte_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_push_back_ft)(godot_pool_byte_array* p_self, uint8_t p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_remove_ft)(godot_pool_byte_array* p_self, godot_int p_idx)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_resize_ft)(godot_pool_byte_array* p_self, godot_int p_size)

    ctypedef godot_pool_byte_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_read_ft)(godot_pool_byte_array* p_self)

    ctypedef godot_pool_byte_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_write_ft)(godot_pool_byte_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_set_ft)(godot_pool_byte_array* p_self, godot_int p_idx, uint8_t p_data)

    ctypedef uint8_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_get_ft)(godot_pool_byte_array* p_self, godot_int p_idx)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_size_ft)(godot_pool_byte_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_destroy_ft)(godot_pool_byte_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_new_ft)(godot_pool_int_array* r_dest)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_new_copy_ft)(godot_pool_int_array* r_dest, godot_pool_int_array* p_src)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_new_with_array_ft)(godot_pool_int_array* r_dest, godot_array* p_a)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_append_ft)(godot_pool_int_array* p_self, godot_int p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_append_array_ft)(godot_pool_int_array* p_self, godot_pool_int_array* p_array)

    ctypedef godot_error (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_insert_ft)(godot_pool_int_array* p_self, godot_int p_idx, godot_int p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_invert_ft)(godot_pool_int_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_push_back_ft)(godot_pool_int_array* p_self, godot_int p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_remove_ft)(godot_pool_int_array* p_self, godot_int p_idx)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_resize_ft)(godot_pool_int_array* p_self, godot_int p_size)

    ctypedef godot_pool_int_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_read_ft)(godot_pool_int_array* p_self)

    ctypedef godot_pool_int_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_write_ft)(godot_pool_int_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_set_ft)(godot_pool_int_array* p_self, godot_int p_idx, godot_int p_data)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_get_ft)(godot_pool_int_array* p_self, godot_int p_idx)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_size_ft)(godot_pool_int_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_destroy_ft)(godot_pool_int_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_new_ft)(godot_pool_real_array* r_dest)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_new_copy_ft)(godot_pool_real_array* r_dest, godot_pool_real_array* p_src)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_new_with_array_ft)(godot_pool_real_array* r_dest, godot_array* p_a)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_append_ft)(godot_pool_real_array* p_self, godot_real p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_append_array_ft)(godot_pool_real_array* p_self, godot_pool_real_array* p_array)

    ctypedef godot_error (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_insert_ft)(godot_pool_real_array* p_self, godot_int p_idx, godot_real p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_invert_ft)(godot_pool_real_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_push_back_ft)(godot_pool_real_array* p_self, godot_real p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_remove_ft)(godot_pool_real_array* p_self, godot_int p_idx)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_resize_ft)(godot_pool_real_array* p_self, godot_int p_size)

    ctypedef godot_pool_real_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_read_ft)(godot_pool_real_array* p_self)

    ctypedef godot_pool_real_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_write_ft)(godot_pool_real_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_set_ft)(godot_pool_real_array* p_self, godot_int p_idx, godot_real p_data)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_get_ft)(godot_pool_real_array* p_self, godot_int p_idx)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_size_ft)(godot_pool_real_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_destroy_ft)(godot_pool_real_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_new_ft)(godot_pool_string_array* r_dest)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_new_copy_ft)(godot_pool_string_array* r_dest, godot_pool_string_array* p_src)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_new_with_array_ft)(godot_pool_string_array* r_dest, godot_array* p_a)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_append_ft)(godot_pool_string_array* p_self, godot_string* p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_append_array_ft)(godot_pool_string_array* p_self, godot_pool_string_array* p_array)

    ctypedef godot_error (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_insert_ft)(godot_pool_string_array* p_self, godot_int p_idx, godot_string* p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_invert_ft)(godot_pool_string_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_push_back_ft)(godot_pool_string_array* p_self, godot_string* p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_remove_ft)(godot_pool_string_array* p_self, godot_int p_idx)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_resize_ft)(godot_pool_string_array* p_self, godot_int p_size)

    ctypedef godot_pool_string_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_read_ft)(godot_pool_string_array* p_self)

    ctypedef godot_pool_string_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_write_ft)(godot_pool_string_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_set_ft)(godot_pool_string_array* p_self, godot_int p_idx, godot_string* p_data)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_get_ft)(godot_pool_string_array* p_self, godot_int p_idx)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_size_ft)(godot_pool_string_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_destroy_ft)(godot_pool_string_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_new_ft)(godot_pool_vector2_array* r_dest)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_new_copy_ft)(godot_pool_vector2_array* r_dest, godot_pool_vector2_array* p_src)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_new_with_array_ft)(godot_pool_vector2_array* r_dest, godot_array* p_a)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_append_ft)(godot_pool_vector2_array* p_self, godot_vector2* p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_append_array_ft)(godot_pool_vector2_array* p_self, godot_pool_vector2_array* p_array)

    ctypedef godot_error (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_insert_ft)(godot_pool_vector2_array* p_self, godot_int p_idx, godot_vector2* p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_invert_ft)(godot_pool_vector2_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_push_back_ft)(godot_pool_vector2_array* p_self, godot_vector2* p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_remove_ft)(godot_pool_vector2_array* p_self, godot_int p_idx)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_resize_ft)(godot_pool_vector2_array* p_self, godot_int p_size)

    ctypedef godot_pool_vector2_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_read_ft)(godot_pool_vector2_array* p_self)

    ctypedef godot_pool_vector2_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_write_ft)(godot_pool_vector2_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_set_ft)(godot_pool_vector2_array* p_self, godot_int p_idx, godot_vector2* p_data)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_get_ft)(godot_pool_vector2_array* p_self, godot_int p_idx)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_size_ft)(godot_pool_vector2_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_destroy_ft)(godot_pool_vector2_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_new_ft)(godot_pool_vector3_array* r_dest)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_new_copy_ft)(godot_pool_vector3_array* r_dest, godot_pool_vector3_array* p_src)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_new_with_array_ft)(godot_pool_vector3_array* r_dest, godot_array* p_a)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_append_ft)(godot_pool_vector3_array* p_self, godot_vector3* p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_append_array_ft)(godot_pool_vector3_array* p_self, godot_pool_vector3_array* p_array)

    ctypedef godot_error (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_insert_ft)(godot_pool_vector3_array* p_self, godot_int p_idx, godot_vector3* p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_invert_ft)(godot_pool_vector3_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_push_back_ft)(godot_pool_vector3_array* p_self, godot_vector3* p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_remove_ft)(godot_pool_vector3_array* p_self, godot_int p_idx)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_resize_ft)(godot_pool_vector3_array* p_self, godot_int p_size)

    ctypedef godot_pool_vector3_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_read_ft)(godot_pool_vector3_array* p_self)

    ctypedef godot_pool_vector3_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_write_ft)(godot_pool_vector3_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_set_ft)(godot_pool_vector3_array* p_self, godot_int p_idx, godot_vector3* p_data)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_get_ft)(godot_pool_vector3_array* p_self, godot_int p_idx)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_size_ft)(godot_pool_vector3_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_destroy_ft)(godot_pool_vector3_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_new_ft)(godot_pool_color_array* r_dest)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_new_copy_ft)(godot_pool_color_array* r_dest, godot_pool_color_array* p_src)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_new_with_array_ft)(godot_pool_color_array* r_dest, godot_array* p_a)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_append_ft)(godot_pool_color_array* p_self, godot_color* p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_append_array_ft)(godot_pool_color_array* p_self, godot_pool_color_array* p_array)

    ctypedef godot_error (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_insert_ft)(godot_pool_color_array* p_self, godot_int p_idx, godot_color* p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_invert_ft)(godot_pool_color_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_push_back_ft)(godot_pool_color_array* p_self, godot_color* p_data)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_remove_ft)(godot_pool_color_array* p_self, godot_int p_idx)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_resize_ft)(godot_pool_color_array* p_self, godot_int p_size)

    ctypedef godot_pool_color_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_read_ft)(godot_pool_color_array* p_self)

    ctypedef godot_pool_color_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_write_ft)(godot_pool_color_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_set_ft)(godot_pool_color_array* p_self, godot_int p_idx, godot_color* p_data)

    ctypedef godot_color (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_get_ft)(godot_pool_color_array* p_self, godot_int p_idx)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_size_ft)(godot_pool_color_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_destroy_ft)(godot_pool_color_array* p_self)

    ctypedef godot_pool_byte_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_read_access_copy_ft)(godot_pool_byte_array_read_access* p_read)

    ctypedef uint8_t* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_read_access_ptr_ft)(godot_pool_byte_array_read_access* p_read)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_read_access_operator_assign_ft)(godot_pool_byte_array_read_access* p_read, godot_pool_byte_array_read_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_read_access_destroy_ft)(godot_pool_byte_array_read_access* p_read)

    ctypedef godot_pool_int_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_read_access_copy_ft)(godot_pool_int_array_read_access* p_read)

    ctypedef godot_int* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_read_access_ptr_ft)(godot_pool_int_array_read_access* p_read)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_read_access_operator_assign_ft)(godot_pool_int_array_read_access* p_read, godot_pool_int_array_read_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_read_access_destroy_ft)(godot_pool_int_array_read_access* p_read)

    ctypedef godot_pool_real_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_read_access_copy_ft)(godot_pool_real_array_read_access* p_read)

    ctypedef godot_real* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_read_access_ptr_ft)(godot_pool_real_array_read_access* p_read)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_read_access_operator_assign_ft)(godot_pool_real_array_read_access* p_read, godot_pool_real_array_read_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_read_access_destroy_ft)(godot_pool_real_array_read_access* p_read)

    ctypedef godot_pool_string_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_read_access_copy_ft)(godot_pool_string_array_read_access* p_read)

    ctypedef godot_string* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_read_access_ptr_ft)(godot_pool_string_array_read_access* p_read)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_read_access_operator_assign_ft)(godot_pool_string_array_read_access* p_read, godot_pool_string_array_read_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_read_access_destroy_ft)(godot_pool_string_array_read_access* p_read)

    ctypedef godot_pool_vector2_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_read_access_copy_ft)(godot_pool_vector2_array_read_access* p_read)

    ctypedef godot_vector2* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_read_access_ptr_ft)(godot_pool_vector2_array_read_access* p_read)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_read_access_operator_assign_ft)(godot_pool_vector2_array_read_access* p_read, godot_pool_vector2_array_read_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_read_access_destroy_ft)(godot_pool_vector2_array_read_access* p_read)

    ctypedef godot_pool_vector3_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_read_access_copy_ft)(godot_pool_vector3_array_read_access* p_read)

    ctypedef godot_vector3* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_read_access_ptr_ft)(godot_pool_vector3_array_read_access* p_read)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_read_access_operator_assign_ft)(godot_pool_vector3_array_read_access* p_read, godot_pool_vector3_array_read_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_read_access_destroy_ft)(godot_pool_vector3_array_read_access* p_read)

    ctypedef godot_pool_color_array_read_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_read_access_copy_ft)(godot_pool_color_array_read_access* p_read)

    ctypedef godot_color* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_read_access_ptr_ft)(godot_pool_color_array_read_access* p_read)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_read_access_operator_assign_ft)(godot_pool_color_array_read_access* p_read, godot_pool_color_array_read_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_read_access_destroy_ft)(godot_pool_color_array_read_access* p_read)

    ctypedef godot_pool_byte_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_write_access_copy_ft)(godot_pool_byte_array_write_access* p_write)

    ctypedef uint8_t* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_write_access_ptr_ft)(godot_pool_byte_array_write_access* p_write)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_write_access_operator_assign_ft)(godot_pool_byte_array_write_access* p_write, godot_pool_byte_array_write_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_write_access_destroy_ft)(godot_pool_byte_array_write_access* p_write)

    ctypedef godot_pool_int_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_write_access_copy_ft)(godot_pool_int_array_write_access* p_write)

    ctypedef godot_int* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_write_access_ptr_ft)(godot_pool_int_array_write_access* p_write)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_write_access_operator_assign_ft)(godot_pool_int_array_write_access* p_write, godot_pool_int_array_write_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_write_access_destroy_ft)(godot_pool_int_array_write_access* p_write)

    ctypedef godot_pool_real_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_write_access_copy_ft)(godot_pool_real_array_write_access* p_write)

    ctypedef godot_real* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_write_access_ptr_ft)(godot_pool_real_array_write_access* p_write)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_write_access_operator_assign_ft)(godot_pool_real_array_write_access* p_write, godot_pool_real_array_write_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_write_access_destroy_ft)(godot_pool_real_array_write_access* p_write)

    ctypedef godot_pool_string_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_write_access_copy_ft)(godot_pool_string_array_write_access* p_write)

    ctypedef godot_string* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_write_access_ptr_ft)(godot_pool_string_array_write_access* p_write)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_write_access_operator_assign_ft)(godot_pool_string_array_write_access* p_write, godot_pool_string_array_write_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_write_access_destroy_ft)(godot_pool_string_array_write_access* p_write)

    ctypedef godot_pool_vector2_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_write_access_copy_ft)(godot_pool_vector2_array_write_access* p_write)

    ctypedef godot_vector2* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_write_access_ptr_ft)(godot_pool_vector2_array_write_access* p_write)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_write_access_operator_assign_ft)(godot_pool_vector2_array_write_access* p_write, godot_pool_vector2_array_write_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_write_access_destroy_ft)(godot_pool_vector2_array_write_access* p_write)

    ctypedef godot_pool_vector3_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_write_access_copy_ft)(godot_pool_vector3_array_write_access* p_write)

    ctypedef godot_vector3* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_write_access_ptr_ft)(godot_pool_vector3_array_write_access* p_write)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_write_access_operator_assign_ft)(godot_pool_vector3_array_write_access* p_write, godot_pool_vector3_array_write_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_write_access_destroy_ft)(godot_pool_vector3_array_write_access* p_write)

    ctypedef godot_pool_color_array_write_access* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_write_access_copy_ft)(godot_pool_color_array_write_access* p_write)

    ctypedef godot_color* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_write_access_ptr_ft)(godot_pool_color_array_write_access* p_write)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_write_access_operator_assign_ft)(godot_pool_color_array_write_access* p_write, godot_pool_color_array_write_access* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_write_access_destroy_ft)(godot_pool_color_array_write_access* p_write)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_ft)(godot_array* r_dest)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_copy_ft)(godot_array* r_dest, godot_array* p_src)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_color_array_ft)(godot_array* r_dest, godot_pool_color_array* p_pca)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_vector3_array_ft)(godot_array* r_dest, godot_pool_vector3_array* p_pv3a)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_vector2_array_ft)(godot_array* r_dest, godot_pool_vector2_array* p_pv2a)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_string_array_ft)(godot_array* r_dest, godot_pool_string_array* p_psa)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_real_array_ft)(godot_array* r_dest, godot_pool_real_array* p_pra)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_int_array_ft)(godot_array* r_dest, godot_pool_int_array* p_pia)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_byte_array_ft)(godot_array* r_dest, godot_pool_byte_array* p_pba)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_set_ft)(godot_array* p_self, godot_int p_idx, godot_variant* p_value)

    ctypedef godot_variant (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_get_ft)(godot_array* p_self, godot_int p_idx)

    ctypedef godot_variant* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_operator_index_ft)(godot_array* p_self, godot_int p_idx)

    ctypedef godot_variant* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_operator_index_const_ft)(godot_array* p_self, godot_int p_idx)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_append_ft)(godot_array* p_self, godot_variant* p_value)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_clear_ft)(godot_array* p_self)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_count_ft)(godot_array* p_self, godot_variant* p_value)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_empty_ft)(godot_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_erase_ft)(godot_array* p_self, godot_variant* p_value)

    ctypedef godot_variant (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_front_ft)(godot_array* p_self)

    ctypedef godot_variant (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_back_ft)(godot_array* p_self)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_find_ft)(godot_array* p_self, godot_variant* p_what, godot_int p_from)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_find_last_ft)(godot_array* p_self, godot_variant* p_what)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_has_ft)(godot_array* p_self, godot_variant* p_value)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_hash_ft)(godot_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_insert_ft)(godot_array* p_self, godot_int p_pos, godot_variant* p_value)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_invert_ft)(godot_array* p_self)

    ctypedef godot_variant (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_pop_back_ft)(godot_array* p_self)

    ctypedef godot_variant (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_pop_front_ft)(godot_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_push_back_ft)(godot_array* p_self, godot_variant* p_value)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_push_front_ft)(godot_array* p_self, godot_variant* p_value)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_remove_ft)(godot_array* p_self, godot_int p_idx)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_resize_ft)(godot_array* p_self, godot_int p_size)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_rfind_ft)(godot_array* p_self, godot_variant* p_what, godot_int p_from)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_size_ft)(godot_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_sort_ft)(godot_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_sort_custom_ft)(godot_array* p_self, godot_object* p_obj, godot_string* p_func)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_bsearch_ft)(godot_array* p_self, godot_variant* p_value, godot_bool p_before)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_bsearch_custom_ft)(godot_array* p_self, godot_variant* p_value, godot_object* p_obj, godot_string* p_func, godot_bool p_before)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_destroy_ft)(godot_array* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_new_ft)(godot_dictionary* r_dest)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_new_copy_ft)(godot_dictionary* r_dest, godot_dictionary* p_src)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_destroy_ft)(godot_dictionary* p_self)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_size_ft)(godot_dictionary* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_empty_ft)(godot_dictionary* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_clear_ft)(godot_dictionary* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_has_ft)(godot_dictionary* p_self, godot_variant* p_key)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_has_all_ft)(godot_dictionary* p_self, godot_array* p_keys)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_erase_ft)(godot_dictionary* p_self, godot_variant* p_key)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_hash_ft)(godot_dictionary* p_self)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_keys_ft)(godot_dictionary* p_self)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_values_ft)(godot_dictionary* p_self)

    ctypedef godot_variant (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_get_ft)(godot_dictionary* p_self, godot_variant* p_key)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_set_ft)(godot_dictionary* p_self, godot_variant* p_key, godot_variant* p_value)

    ctypedef godot_variant* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_operator_index_ft)(godot_dictionary* p_self, godot_variant* p_key)

    ctypedef godot_variant* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_operator_index_const_ft)(godot_dictionary* p_self, godot_variant* p_key)

    ctypedef godot_variant* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_next_ft)(godot_dictionary* p_self, godot_variant* p_key)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_operator_equal_ft)(godot_dictionary* p_self, godot_dictionary* p_b)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_to_json_ft)(godot_dictionary* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_new_ft)(godot_node_path* r_dest, godot_string* p_from)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_new_copy_ft)(godot_node_path* r_dest, godot_node_path* p_src)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_destroy_ft)(godot_node_path* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_as_string_ft)(godot_node_path* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_is_absolute_ft)(godot_node_path* p_self)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_get_name_count_ft)(godot_node_path* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_get_name_ft)(godot_node_path* p_self, godot_int p_idx)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_get_subname_count_ft)(godot_node_path* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_get_subname_ft)(godot_node_path* p_self, godot_int p_idx)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_get_concatenated_subnames_ft)(godot_node_path* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_is_empty_ft)(godot_node_path* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_operator_equal_ft)(godot_node_path* p_self, godot_node_path* p_b)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_new_with_reals_ft)(godot_plane* r_dest, godot_real p_a, godot_real p_b, godot_real p_c, godot_real p_d)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_new_with_vectors_ft)(godot_plane* r_dest, godot_vector3* p_v1, godot_vector3* p_v2, godot_vector3* p_v3)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_new_with_normal_ft)(godot_plane* r_dest, godot_vector3* p_normal, godot_real p_d)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_as_string_ft)(godot_plane* p_self)

    ctypedef godot_plane (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_normalized_ft)(godot_plane* p_self)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_center_ft)(godot_plane* p_self)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_get_any_point_ft)(godot_plane* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_is_point_over_ft)(godot_plane* p_self, godot_vector3* p_point)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_distance_to_ft)(godot_plane* p_self, godot_vector3* p_point)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_has_point_ft)(godot_plane* p_self, godot_vector3* p_point, godot_real p_epsilon)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_project_ft)(godot_plane* p_self, godot_vector3* p_point)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_intersect_3_ft)(godot_plane* p_self, godot_vector3* r_dest, godot_plane* p_b, godot_plane* p_c)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_intersects_ray_ft)(godot_plane* p_self, godot_vector3* r_dest, godot_vector3* p_from, godot_vector3* p_dir)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_intersects_segment_ft)(godot_plane* p_self, godot_vector3* r_dest, godot_vector3* p_begin, godot_vector3* p_end)

    ctypedef godot_plane (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_operator_neg_ft)(godot_plane* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_operator_equal_ft)(godot_plane* p_self, godot_plane* p_b)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_set_normal_ft)(godot_plane* p_self, godot_vector3* p_normal)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_get_normal_ft)(godot_plane* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_get_d_ft)(godot_plane* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_set_d_ft)(godot_plane* p_self, godot_real p_d)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_new_with_position_and_size_ft)(godot_rect2* r_dest, godot_vector2* p_pos, godot_vector2* p_size)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_new_ft)(godot_rect2* r_dest, godot_real p_x, godot_real p_y, godot_real p_width, godot_real p_height)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_as_string_ft)(godot_rect2* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_get_area_ft)(godot_rect2* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_intersects_ft)(godot_rect2* p_self, godot_rect2* p_b)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_encloses_ft)(godot_rect2* p_self, godot_rect2* p_b)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_has_no_area_ft)(godot_rect2* p_self)

    ctypedef godot_rect2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_clip_ft)(godot_rect2* p_self, godot_rect2* p_b)

    ctypedef godot_rect2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_merge_ft)(godot_rect2* p_self, godot_rect2* p_b)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_has_point_ft)(godot_rect2* p_self, godot_vector2* p_point)

    ctypedef godot_rect2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_grow_ft)(godot_rect2* p_self, godot_real p_by)

    ctypedef godot_rect2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_expand_ft)(godot_rect2* p_self, godot_vector2* p_to)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_operator_equal_ft)(godot_rect2* p_self, godot_rect2* p_b)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_get_position_ft)(godot_rect2* p_self)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_get_size_ft)(godot_rect2* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_set_position_ft)(godot_rect2* p_self, godot_vector2* p_pos)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_set_size_ft)(godot_rect2* p_self, godot_vector2* p_size)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_new_ft)(godot_aabb* r_dest, godot_vector3* p_pos, godot_vector3* p_size)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_position_ft)(godot_aabb* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_set_position_ft)(godot_aabb* p_self, godot_vector3* p_v)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_size_ft)(godot_aabb* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_set_size_ft)(godot_aabb* p_self, godot_vector3* p_v)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_as_string_ft)(godot_aabb* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_area_ft)(godot_aabb* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_has_no_area_ft)(godot_aabb* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_has_no_surface_ft)(godot_aabb* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_intersects_ft)(godot_aabb* p_self, godot_aabb* p_with)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_encloses_ft)(godot_aabb* p_self, godot_aabb* p_with)

    ctypedef godot_aabb (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_merge_ft)(godot_aabb* p_self, godot_aabb* p_with)

    ctypedef godot_aabb (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_intersection_ft)(godot_aabb* p_self, godot_aabb* p_with)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_intersects_plane_ft)(godot_aabb* p_self, godot_plane* p_plane)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_intersects_segment_ft)(godot_aabb* p_self, godot_vector3* p_from, godot_vector3* p_to)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_has_point_ft)(godot_aabb* p_self, godot_vector3* p_point)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_support_ft)(godot_aabb* p_self, godot_vector3* p_dir)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_longest_axis_ft)(godot_aabb* p_self)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_longest_axis_index_ft)(godot_aabb* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_longest_axis_size_ft)(godot_aabb* p_self)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_shortest_axis_ft)(godot_aabb* p_self)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_shortest_axis_index_ft)(godot_aabb* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_shortest_axis_size_ft)(godot_aabb* p_self)

    ctypedef godot_aabb (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_expand_ft)(godot_aabb* p_self, godot_vector3* p_to_point)

    ctypedef godot_aabb (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_grow_ft)(godot_aabb* p_self, godot_real p_by)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_endpoint_ft)(godot_aabb* p_self, godot_int p_idx)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_operator_equal_ft)(godot_aabb* p_self, godot_aabb* p_b)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rid_new_ft)(godot_rid* r_dest)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rid_get_id_ft)(godot_rid* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rid_new_with_resource_ft)(godot_rid* r_dest, godot_object* p_from)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rid_operator_equal_ft)(godot_rid* p_self, godot_rid* p_b)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rid_operator_less_ft)(godot_rid* p_self, godot_rid* p_b)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_new_with_axis_origin_ft)(godot_transform* r_dest, godot_vector3* p_x_axis, godot_vector3* p_y_axis, godot_vector3* p_z_axis, godot_vector3* p_origin)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_new_ft)(godot_transform* r_dest, godot_basis* p_basis, godot_vector3* p_origin)

    ctypedef godot_basis (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_get_basis_ft)(godot_transform* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_set_basis_ft)(godot_transform* p_self, godot_basis* p_v)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_get_origin_ft)(godot_transform* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_set_origin_ft)(godot_transform* p_self, godot_vector3* p_v)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_as_string_ft)(godot_transform* p_self)

    ctypedef godot_transform (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_inverse_ft)(godot_transform* p_self)

    ctypedef godot_transform (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_affine_inverse_ft)(godot_transform* p_self)

    ctypedef godot_transform (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_orthonormalized_ft)(godot_transform* p_self)

    ctypedef godot_transform (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_rotated_ft)(godot_transform* p_self, godot_vector3* p_axis, godot_real p_phi)

    ctypedef godot_transform (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_scaled_ft)(godot_transform* p_self, godot_vector3* p_scale)

    ctypedef godot_transform (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_translated_ft)(godot_transform* p_self, godot_vector3* p_ofs)

    ctypedef godot_transform (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_looking_at_ft)(godot_transform* p_self, godot_vector3* p_target, godot_vector3* p_up)

    ctypedef godot_plane (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_xform_plane_ft)(godot_transform* p_self, godot_plane* p_v)

    ctypedef godot_plane (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_xform_inv_plane_ft)(godot_transform* p_self, godot_plane* p_v)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_new_identity_ft)(godot_transform* r_dest)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_operator_equal_ft)(godot_transform* p_self, godot_transform* p_b)

    ctypedef godot_transform (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_operator_multiply_ft)(godot_transform* p_self, godot_transform* p_b)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_xform_vector3_ft)(godot_transform* p_self, godot_vector3* p_v)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_xform_inv_vector3_ft)(godot_transform* p_self, godot_vector3* p_v)

    ctypedef godot_aabb (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_xform_aabb_ft)(godot_transform* p_self, godot_aabb* p_v)

    ctypedef godot_aabb (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_xform_inv_aabb_ft)(godot_transform* p_self, godot_aabb* p_v)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_new_ft)(godot_transform2d* r_dest, godot_real p_rot, godot_vector2* p_pos)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_new_axis_origin_ft)(godot_transform2d* r_dest, godot_vector2* p_x_axis, godot_vector2* p_y_axis, godot_vector2* p_origin)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_as_string_ft)(godot_transform2d* p_self)

    ctypedef godot_transform2d (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_inverse_ft)(godot_transform2d* p_self)

    ctypedef godot_transform2d (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_affine_inverse_ft)(godot_transform2d* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_get_rotation_ft)(godot_transform2d* p_self)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_get_origin_ft)(godot_transform2d* p_self)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_get_scale_ft)(godot_transform2d* p_self)

    ctypedef godot_transform2d (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_orthonormalized_ft)(godot_transform2d* p_self)

    ctypedef godot_transform2d (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_rotated_ft)(godot_transform2d* p_self, godot_real p_phi)

    ctypedef godot_transform2d (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_scaled_ft)(godot_transform2d* p_self, godot_vector2* p_scale)

    ctypedef godot_transform2d (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_translated_ft)(godot_transform2d* p_self, godot_vector2* p_offset)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_xform_vector2_ft)(godot_transform2d* p_self, godot_vector2* p_v)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_xform_inv_vector2_ft)(godot_transform2d* p_self, godot_vector2* p_v)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_basis_xform_vector2_ft)(godot_transform2d* p_self, godot_vector2* p_v)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_basis_xform_inv_vector2_ft)(godot_transform2d* p_self, godot_vector2* p_v)

    ctypedef godot_transform2d (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_interpolate_with_ft)(godot_transform2d* p_self, godot_transform2d* p_m, godot_real p_c)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_operator_equal_ft)(godot_transform2d* p_self, godot_transform2d* p_b)

    ctypedef godot_transform2d (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_operator_multiply_ft)(godot_transform2d* p_self, godot_transform2d* p_b)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_new_identity_ft)(godot_transform2d* r_dest)

    ctypedef godot_rect2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_xform_rect2_ft)(godot_transform2d* p_self, godot_rect2* p_v)

    ctypedef godot_rect2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_xform_inv_rect2_ft)(godot_transform2d* p_self, godot_rect2* p_v)

    ctypedef godot_variant_type (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_get_type_ft)(godot_variant* p_v)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_copy_ft)(godot_variant* r_dest, godot_variant* p_src)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_nil_ft)(godot_variant* r_dest)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_bool_ft)(godot_variant* r_dest, godot_bool p_b)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_uint_ft)(godot_variant* r_dest, uint64_t p_i)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_int_ft)(godot_variant* r_dest, int64_t p_i)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_real_ft)(godot_variant* r_dest, double p_r)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_string_ft)(godot_variant* r_dest, godot_string* p_s)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_vector2_ft)(godot_variant* r_dest, godot_vector2* p_v2)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_rect2_ft)(godot_variant* r_dest, godot_rect2* p_rect2)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_vector3_ft)(godot_variant* r_dest, godot_vector3* p_v3)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_transform2d_ft)(godot_variant* r_dest, godot_transform2d* p_t2d)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_plane_ft)(godot_variant* r_dest, godot_plane* p_plane)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_quat_ft)(godot_variant* r_dest, godot_quat* p_quat)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_aabb_ft)(godot_variant* r_dest, godot_aabb* p_aabb)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_basis_ft)(godot_variant* r_dest, godot_basis* p_basis)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_transform_ft)(godot_variant* r_dest, godot_transform* p_trans)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_color_ft)(godot_variant* r_dest, godot_color* p_color)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_node_path_ft)(godot_variant* r_dest, godot_node_path* p_np)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_rid_ft)(godot_variant* r_dest, godot_rid* p_rid)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_object_ft)(godot_variant* r_dest, godot_object* p_obj)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_dictionary_ft)(godot_variant* r_dest, godot_dictionary* p_dict)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_array_ft)(godot_variant* r_dest, godot_array* p_arr)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_byte_array_ft)(godot_variant* r_dest, godot_pool_byte_array* p_pba)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_int_array_ft)(godot_variant* r_dest, godot_pool_int_array* p_pia)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_real_array_ft)(godot_variant* r_dest, godot_pool_real_array* p_pra)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_string_array_ft)(godot_variant* r_dest, godot_pool_string_array* p_psa)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_vector2_array_ft)(godot_variant* r_dest, godot_pool_vector2_array* p_pv2a)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_vector3_array_ft)(godot_variant* r_dest, godot_pool_vector3_array* p_pv3a)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_color_array_ft)(godot_variant* r_dest, godot_pool_color_array* p_pca)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_bool_ft)(godot_variant* p_self)

    ctypedef uint64_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_uint_ft)(godot_variant* p_self)

    ctypedef int64_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_int_ft)(godot_variant* p_self)

    ctypedef double (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_real_ft)(godot_variant* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_string_ft)(godot_variant* p_self)

    ctypedef godot_vector2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_vector2_ft)(godot_variant* p_self)

    ctypedef godot_rect2 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_rect2_ft)(godot_variant* p_self)

    ctypedef godot_vector3 (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_vector3_ft)(godot_variant* p_self)

    ctypedef godot_transform2d (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_transform2d_ft)(godot_variant* p_self)

    ctypedef godot_plane (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_plane_ft)(godot_variant* p_self)

    ctypedef godot_quat (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_quat_ft)(godot_variant* p_self)

    ctypedef godot_aabb (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_aabb_ft)(godot_variant* p_self)

    ctypedef godot_basis (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_basis_ft)(godot_variant* p_self)

    ctypedef godot_transform (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_transform_ft)(godot_variant* p_self)

    ctypedef godot_color (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_color_ft)(godot_variant* p_self)

    ctypedef godot_node_path (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_node_path_ft)(godot_variant* p_self)

    ctypedef godot_rid (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_rid_ft)(godot_variant* p_self)

    ctypedef godot_object* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_object_ft)(godot_variant* p_self)

    ctypedef godot_dictionary (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_dictionary_ft)(godot_variant* p_self)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_array_ft)(godot_variant* p_self)

    ctypedef godot_pool_byte_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_byte_array_ft)(godot_variant* p_self)

    ctypedef godot_pool_int_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_int_array_ft)(godot_variant* p_self)

    ctypedef godot_pool_real_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_real_array_ft)(godot_variant* p_self)

    ctypedef godot_pool_string_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_string_array_ft)(godot_variant* p_self)

    ctypedef godot_pool_vector2_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_vector2_array_ft)(godot_variant* p_self)

    ctypedef godot_pool_vector3_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_vector3_array_ft)(godot_variant* p_self)

    ctypedef godot_pool_color_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_color_array_ft)(godot_variant* p_self)

    ctypedef godot_variant (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_call_ft)(godot_variant* p_self, godot_string* p_method, godot_variant** p_args, godot_int p_argcount, godot_variant_call_error* r_error)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_has_method_ft)(godot_variant* p_self, godot_string* p_method)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_operator_equal_ft)(godot_variant* p_self, godot_variant* p_other)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_operator_less_ft)(godot_variant* p_self, godot_variant* p_other)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_hash_compare_ft)(godot_variant* p_self, godot_variant* p_other)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_booleanize_ft)(godot_variant* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_destroy_ft)(godot_variant* p_self)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_char_string_length_ft)(godot_char_string* p_cs)

    ctypedef char* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_char_string_get_data_ft)(godot_char_string* p_cs)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_char_string_destroy_ft)(godot_char_string* p_cs)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_new_ft)(godot_string* r_dest)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_new_copy_ft)(godot_string* r_dest, godot_string* p_src)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_new_with_wide_string_ft)(godot_string* r_dest, wchar_t* p_contents, int p_size)

    ctypedef wchar_t* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_operator_index_ft)(godot_string* p_self, godot_int p_idx)

    ctypedef wchar_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_operator_index_const_ft)(godot_string* p_self, godot_int p_idx)

    ctypedef wchar_t* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_wide_str_ft)(godot_string* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_operator_equal_ft)(godot_string* p_self, godot_string* p_b)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_operator_less_ft)(godot_string* p_self, godot_string* p_b)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_operator_plus_ft)(godot_string* p_self, godot_string* p_b)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_length_ft)(godot_string* p_self)

    ctypedef signed char (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_casecmp_to_ft)(godot_string* p_self, godot_string* p_str)

    ctypedef signed char (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_nocasecmp_to_ft)(godot_string* p_self, godot_string* p_str)

    ctypedef signed char (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_naturalnocasecmp_to_ft)(godot_string* p_self, godot_string* p_str)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_begins_with_ft)(godot_string* p_self, godot_string* p_string)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_begins_with_char_array_ft)(godot_string* p_self, char* p_char_array)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_bigrams_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_chr_ft)(wchar_t p_character)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_ends_with_ft)(godot_string* p_self, godot_string* p_string)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_find_ft)(godot_string* p_self, godot_string p_what)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_find_from_ft)(godot_string* p_self, godot_string p_what, godot_int p_from)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_findmk_ft)(godot_string* p_self, godot_array* p_keys)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_findmk_from_ft)(godot_string* p_self, godot_array* p_keys, godot_int p_from)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_findmk_from_in_place_ft)(godot_string* p_self, godot_array* p_keys, godot_int p_from, godot_int* r_key)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_findn_ft)(godot_string* p_self, godot_string p_what)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_findn_from_ft)(godot_string* p_self, godot_string p_what, godot_int p_from)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_find_last_ft)(godot_string* p_self, godot_string p_what)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_format_ft)(godot_string* p_self, godot_variant* p_values)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_format_with_custom_placeholder_ft)(godot_string* p_self, godot_variant* p_values, char* p_placeholder)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hex_encode_buffer_ft)(uint8_t* p_buffer, godot_int p_len)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hex_to_int_ft)(godot_string* p_self)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hex_to_int_without_prefix_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_insert_ft)(godot_string* p_self, godot_int p_at_pos, godot_string p_string)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_numeric_ft)(godot_string* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_subsequence_of_ft)(godot_string* p_self, godot_string* p_string)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_subsequence_ofi_ft)(godot_string* p_self, godot_string* p_string)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_lpad_ft)(godot_string* p_self, godot_int p_min_length)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_lpad_with_custom_character_ft)(godot_string* p_self, godot_int p_min_length, godot_string* p_character)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_match_ft)(godot_string* p_self, godot_string* p_wildcard)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_matchn_ft)(godot_string* p_self, godot_string* p_wildcard)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_md5_ft)(uint8_t* p_md5)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_num_ft)(double p_num)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_num_int64_ft)(int64_t p_num, godot_int p_base)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_num_int64_capitalized_ft)(int64_t p_num, godot_int p_base, godot_bool p_capitalize_hex)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_num_real_ft)(double p_num)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_num_scientific_ft)(double p_num)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_num_with_decimals_ft)(double p_num, godot_int p_decimals)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_pad_decimals_ft)(godot_string* p_self, godot_int p_digits)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_pad_zeros_ft)(godot_string* p_self, godot_int p_digits)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_replace_first_ft)(godot_string* p_self, godot_string p_key, godot_string p_with)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_replace_ft)(godot_string* p_self, godot_string p_key, godot_string p_with)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_replacen_ft)(godot_string* p_self, godot_string p_key, godot_string p_with)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_rfind_ft)(godot_string* p_self, godot_string p_what)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_rfindn_ft)(godot_string* p_self, godot_string p_what)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_rfind_from_ft)(godot_string* p_self, godot_string p_what, godot_int p_from)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_rfindn_from_ft)(godot_string* p_self, godot_string p_what, godot_int p_from)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_rpad_ft)(godot_string* p_self, godot_int p_min_length)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_rpad_with_custom_character_ft)(godot_string* p_self, godot_int p_min_length, godot_string* p_character)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_similarity_ft)(godot_string* p_self, godot_string* p_string)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_sprintf_ft)(godot_string* p_self, godot_array* p_values, godot_bool* p_error)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_substr_ft)(godot_string* p_self, godot_int p_from, godot_int p_chars)

    ctypedef double (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_to_double_ft)(godot_string* p_self)

    ctypedef godot_real (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_to_float_ft)(godot_string* p_self)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_to_int_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_camelcase_to_underscore_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_camelcase_to_underscore_lowercased_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_capitalize_ft)(godot_string* p_self)

    ctypedef double (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_char_to_double_ft)(char* p_what)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_char_to_int_ft)(char* p_what)

    ctypedef int64_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_wchar_to_int_ft)(wchar_t* p_str)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_char_to_int_with_len_ft)(char* p_what, godot_int p_len)

    ctypedef int64_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_char_to_int64_with_len_ft)(wchar_t* p_str, int p_len)

    ctypedef int64_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hex_to_int64_ft)(godot_string* p_self)

    ctypedef int64_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hex_to_int64_with_prefix_ft)(godot_string* p_self)

    ctypedef int64_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_to_int64_ft)(godot_string* p_self)

    ctypedef double (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_unicode_char_to_double_ft)(wchar_t* p_str, wchar_t** r_end)

    ctypedef godot_int (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_slice_count_ft)(godot_string* p_self, godot_string p_splitter)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_slice_ft)(godot_string* p_self, godot_string p_splitter, godot_int p_slice)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_slicec_ft)(godot_string* p_self, wchar_t p_splitter, godot_int p_slice)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_ft)(godot_string* p_self, godot_string* p_splitter)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_allow_empty_ft)(godot_string* p_self, godot_string* p_splitter)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_floats_ft)(godot_string* p_self, godot_string* p_splitter)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_floats_allows_empty_ft)(godot_string* p_self, godot_string* p_splitter)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_floats_mk_ft)(godot_string* p_self, godot_array* p_splitters)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_floats_mk_allows_empty_ft)(godot_string* p_self, godot_array* p_splitters)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_ints_ft)(godot_string* p_self, godot_string* p_splitter)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_ints_allows_empty_ft)(godot_string* p_self, godot_string* p_splitter)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_ints_mk_ft)(godot_string* p_self, godot_array* p_splitters)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_ints_mk_allows_empty_ft)(godot_string* p_self, godot_array* p_splitters)

    ctypedef godot_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_spaces_ft)(godot_string* p_self)

    ctypedef wchar_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_char_lowercase_ft)(wchar_t p_char)

    ctypedef wchar_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_char_uppercase_ft)(wchar_t p_char)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_to_lower_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_to_upper_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_basename_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_extension_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_left_ft)(godot_string* p_self, godot_int p_pos)

    ctypedef wchar_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_ord_at_ft)(godot_string* p_self, godot_int p_idx)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_plus_file_ft)(godot_string* p_self, godot_string* p_file)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_right_ft)(godot_string* p_self, godot_int p_pos)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_strip_edges_ft)(godot_string* p_self, godot_bool p_left, godot_bool p_right)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_strip_escapes_ft)(godot_string* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_erase_ft)(godot_string* p_self, godot_int p_pos, godot_int p_chars)

    ctypedef godot_char_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_ascii_ft)(godot_string* p_self)

    ctypedef godot_char_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_ascii_extended_ft)(godot_string* p_self)

    ctypedef godot_char_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_utf8_ft)(godot_string* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_parse_utf8_ft)(godot_string* p_self, char* p_utf8)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_parse_utf8_with_len_ft)(godot_string* p_self, char* p_utf8, godot_int p_len)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_chars_to_utf8_ft)(char* p_utf8)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_chars_to_utf8_with_len_ft)(char* p_utf8, godot_int p_len)

    ctypedef uint32_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hash_ft)(godot_string* p_self)

    ctypedef uint64_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hash64_ft)(godot_string* p_self)

    ctypedef uint32_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hash_chars_ft)(char* p_cstr)

    ctypedef uint32_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hash_chars_with_len_ft)(char* p_cstr, godot_int p_len)

    ctypedef uint32_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hash_utf8_chars_ft)(wchar_t* p_str)

    ctypedef uint32_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hash_utf8_chars_with_len_ft)(wchar_t* p_str, godot_int p_len)

    ctypedef godot_pool_byte_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_md5_buffer_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_md5_text_ft)(godot_string* p_self)

    ctypedef godot_pool_byte_array (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_sha256_buffer_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_sha256_text_ft)(godot_string* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_empty_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_base_dir_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_file_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_humanize_size_ft)(size_t p_size)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_abs_path_ft)(godot_string* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_rel_path_ft)(godot_string* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_resource_file_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_path_to_ft)(godot_string* p_self, godot_string* p_path)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_path_to_file_ft)(godot_string* p_self, godot_string* p_path)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_simplify_path_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_c_escape_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_c_escape_multiline_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_c_unescape_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_http_escape_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_http_unescape_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_json_escape_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_word_wrap_ft)(godot_string* p_self, godot_int p_chars_per_line)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_xml_escape_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_xml_escape_with_quotes_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_xml_unescape_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_percent_decode_ft)(godot_string* p_self)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_percent_encode_ft)(godot_string* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_valid_float_ft)(godot_string* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_valid_hex_number_ft)(godot_string* p_self, godot_bool p_with_prefix)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_valid_html_color_ft)(godot_string* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_valid_identifier_ft)(godot_string* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_valid_integer_ft)(godot_string* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_valid_ip_address_ft)(godot_string* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_destroy_ft)(godot_string* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_new_ft)(godot_string_name* r_dest, godot_string* p_name)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_new_data_ft)(godot_string_name* r_dest, char* p_name)

    ctypedef godot_string (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_get_name_ft)(godot_string_name* p_self)

    ctypedef uint32_t (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_get_hash_ft)(godot_string_name* p_self)

    ctypedef void* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_get_data_unique_pointer_ft)(godot_string_name* p_self)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_operator_equal_ft)(godot_string_name* p_self, godot_string_name* p_other)

    ctypedef godot_bool (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_operator_less_ft)(godot_string_name* p_self, godot_string_name* p_other)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_destroy_ft)(godot_string_name* p_self)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_object_destroy_ft)(godot_object* p_o)

    ctypedef godot_object* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_global_get_singleton_ft)(char* p_name)

    ctypedef godot_method_bind* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_method_bind_get_method_ft)(char* p_classname, char* p_methodname)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_method_bind_ptrcall_ft)(godot_method_bind* p_method_bind, godot_object* p_instance, void** p_args, void* p_ret)

    ctypedef godot_variant (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_method_bind_call_ft)(godot_method_bind* p_method_bind, godot_object* p_instance, godot_variant** p_args, int p_arg_count, godot_variant_call_error* p_call_error)

    ctypedef godot_class_constructor (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_get_class_constructor_ft)(char* p_classname)

    ctypedef godot_dictionary (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_get_global_constants_ft)()

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_register_native_call_type_ft)(char* call_type, native_call_cb p_callback)

    ctypedef void* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_alloc_ft)(int p_bytes)

    ctypedef void* (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_realloc_ft)(void* p_ptr, int p_bytes)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_free_ft)(void* p_ptr)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_print_error_ft)(char* p_description, char* p_function, char* p_file, int p_line)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_print_warning_ft)(char* p_description, char* p_function, char* p_file, int p_line)

    ctypedef void (*_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_print_ft)(godot_string* p_message)

    cdef struct godot_gdnative_core_api_struct:
        unsigned int type
        godot_gdnative_api_version version
        godot_gdnative_api_struct* next
        unsigned int num_extensions
        godot_gdnative_api_struct** extensions
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_new_rgba_ft godot_color_new_rgba
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_new_rgb_ft godot_color_new_rgb
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_r_ft godot_color_get_r
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_set_r_ft godot_color_set_r
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_g_ft godot_color_get_g
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_set_g_ft godot_color_set_g
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_b_ft godot_color_get_b
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_set_b_ft godot_color_set_b
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_a_ft godot_color_get_a
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_set_a_ft godot_color_set_a
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_h_ft godot_color_get_h
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_s_ft godot_color_get_s
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_get_v_ft godot_color_get_v
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_as_string_ft godot_color_as_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_to_rgba32_ft godot_color_to_rgba32
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_to_argb32_ft godot_color_to_argb32
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_gray_ft godot_color_gray
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_inverted_ft godot_color_inverted
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_contrasted_ft godot_color_contrasted
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_linear_interpolate_ft godot_color_linear_interpolate
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_blend_ft godot_color_blend
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_to_html_ft godot_color_to_html
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_operator_equal_ft godot_color_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_color_operator_less_ft godot_color_operator_less
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_new_ft godot_vector2_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_as_string_ft godot_vector2_as_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_normalized_ft godot_vector2_normalized
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_length_ft godot_vector2_length
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_angle_ft godot_vector2_angle
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_length_squared_ft godot_vector2_length_squared
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_is_normalized_ft godot_vector2_is_normalized
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_distance_to_ft godot_vector2_distance_to
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_distance_squared_to_ft godot_vector2_distance_squared_to
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_angle_to_ft godot_vector2_angle_to
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_angle_to_point_ft godot_vector2_angle_to_point
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_linear_interpolate_ft godot_vector2_linear_interpolate
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_cubic_interpolate_ft godot_vector2_cubic_interpolate
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_rotated_ft godot_vector2_rotated
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_tangent_ft godot_vector2_tangent
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_floor_ft godot_vector2_floor
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_snapped_ft godot_vector2_snapped
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_aspect_ft godot_vector2_aspect
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_dot_ft godot_vector2_dot
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_slide_ft godot_vector2_slide
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_bounce_ft godot_vector2_bounce
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_reflect_ft godot_vector2_reflect
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_abs_ft godot_vector2_abs
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_clamped_ft godot_vector2_clamped
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_add_ft godot_vector2_operator_add
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_subtract_ft godot_vector2_operator_subtract
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_multiply_vector_ft godot_vector2_operator_multiply_vector
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_multiply_scalar_ft godot_vector2_operator_multiply_scalar
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_divide_vector_ft godot_vector2_operator_divide_vector
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_divide_scalar_ft godot_vector2_operator_divide_scalar
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_equal_ft godot_vector2_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_less_ft godot_vector2_operator_less
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_operator_neg_ft godot_vector2_operator_neg
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_set_x_ft godot_vector2_set_x
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_set_y_ft godot_vector2_set_y
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_get_x_ft godot_vector2_get_x
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector2_get_y_ft godot_vector2_get_y
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_new_ft godot_quat_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_new_with_axis_angle_ft godot_quat_new_with_axis_angle
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_get_x_ft godot_quat_get_x
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_set_x_ft godot_quat_set_x
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_get_y_ft godot_quat_get_y
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_set_y_ft godot_quat_set_y
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_get_z_ft godot_quat_get_z
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_set_z_ft godot_quat_set_z
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_get_w_ft godot_quat_get_w
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_set_w_ft godot_quat_set_w
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_as_string_ft godot_quat_as_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_length_ft godot_quat_length
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_length_squared_ft godot_quat_length_squared
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_normalized_ft godot_quat_normalized
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_is_normalized_ft godot_quat_is_normalized
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_inverse_ft godot_quat_inverse
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_dot_ft godot_quat_dot
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_xform_ft godot_quat_xform
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_slerp_ft godot_quat_slerp
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_slerpni_ft godot_quat_slerpni
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_cubic_slerp_ft godot_quat_cubic_slerp
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_operator_multiply_ft godot_quat_operator_multiply
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_operator_add_ft godot_quat_operator_add
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_operator_subtract_ft godot_quat_operator_subtract
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_operator_divide_ft godot_quat_operator_divide
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_operator_equal_ft godot_quat_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_quat_operator_neg_ft godot_quat_operator_neg
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_new_with_rows_ft godot_basis_new_with_rows
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_new_with_axis_and_angle_ft godot_basis_new_with_axis_and_angle
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_new_with_euler_ft godot_basis_new_with_euler
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_as_string_ft godot_basis_as_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_inverse_ft godot_basis_inverse
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_transposed_ft godot_basis_transposed
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_orthonormalized_ft godot_basis_orthonormalized
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_determinant_ft godot_basis_determinant
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_rotated_ft godot_basis_rotated
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_scaled_ft godot_basis_scaled
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_get_scale_ft godot_basis_get_scale
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_get_euler_ft godot_basis_get_euler
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_tdotx_ft godot_basis_tdotx
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_tdoty_ft godot_basis_tdoty
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_tdotz_ft godot_basis_tdotz
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_xform_ft godot_basis_xform
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_xform_inv_ft godot_basis_xform_inv
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_get_orthogonal_index_ft godot_basis_get_orthogonal_index
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_new_ft godot_basis_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_new_with_euler_quat_ft godot_basis_new_with_euler_quat
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_get_elements_ft godot_basis_get_elements
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_get_axis_ft godot_basis_get_axis
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_set_axis_ft godot_basis_set_axis
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_get_row_ft godot_basis_get_row
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_set_row_ft godot_basis_set_row
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_operator_equal_ft godot_basis_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_operator_add_ft godot_basis_operator_add
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_operator_subtract_ft godot_basis_operator_subtract
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_operator_multiply_vector_ft godot_basis_operator_multiply_vector
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_basis_operator_multiply_scalar_ft godot_basis_operator_multiply_scalar
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_new_ft godot_vector3_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_as_string_ft godot_vector3_as_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_min_axis_ft godot_vector3_min_axis
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_max_axis_ft godot_vector3_max_axis
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_length_ft godot_vector3_length
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_length_squared_ft godot_vector3_length_squared
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_is_normalized_ft godot_vector3_is_normalized
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_normalized_ft godot_vector3_normalized
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_inverse_ft godot_vector3_inverse
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_snapped_ft godot_vector3_snapped
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_rotated_ft godot_vector3_rotated
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_linear_interpolate_ft godot_vector3_linear_interpolate
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_cubic_interpolate_ft godot_vector3_cubic_interpolate
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_dot_ft godot_vector3_dot
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_cross_ft godot_vector3_cross
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_outer_ft godot_vector3_outer
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_to_diagonal_matrix_ft godot_vector3_to_diagonal_matrix
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_abs_ft godot_vector3_abs
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_floor_ft godot_vector3_floor
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_ceil_ft godot_vector3_ceil
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_distance_to_ft godot_vector3_distance_to
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_distance_squared_to_ft godot_vector3_distance_squared_to
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_angle_to_ft godot_vector3_angle_to
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_slide_ft godot_vector3_slide
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_bounce_ft godot_vector3_bounce
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_reflect_ft godot_vector3_reflect
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_add_ft godot_vector3_operator_add
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_subtract_ft godot_vector3_operator_subtract
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_multiply_vector_ft godot_vector3_operator_multiply_vector
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_multiply_scalar_ft godot_vector3_operator_multiply_scalar
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_divide_vector_ft godot_vector3_operator_divide_vector
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_divide_scalar_ft godot_vector3_operator_divide_scalar
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_equal_ft godot_vector3_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_less_ft godot_vector3_operator_less
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_operator_neg_ft godot_vector3_operator_neg
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_set_axis_ft godot_vector3_set_axis
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_vector3_get_axis_ft godot_vector3_get_axis
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_new_ft godot_pool_byte_array_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_new_copy_ft godot_pool_byte_array_new_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_new_with_array_ft godot_pool_byte_array_new_with_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_append_ft godot_pool_byte_array_append
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_append_array_ft godot_pool_byte_array_append_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_insert_ft godot_pool_byte_array_insert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_invert_ft godot_pool_byte_array_invert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_push_back_ft godot_pool_byte_array_push_back
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_remove_ft godot_pool_byte_array_remove
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_resize_ft godot_pool_byte_array_resize
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_read_ft godot_pool_byte_array_read
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_write_ft godot_pool_byte_array_write
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_set_ft godot_pool_byte_array_set
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_get_ft godot_pool_byte_array_get
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_size_ft godot_pool_byte_array_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_destroy_ft godot_pool_byte_array_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_new_ft godot_pool_int_array_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_new_copy_ft godot_pool_int_array_new_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_new_with_array_ft godot_pool_int_array_new_with_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_append_ft godot_pool_int_array_append
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_append_array_ft godot_pool_int_array_append_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_insert_ft godot_pool_int_array_insert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_invert_ft godot_pool_int_array_invert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_push_back_ft godot_pool_int_array_push_back
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_remove_ft godot_pool_int_array_remove
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_resize_ft godot_pool_int_array_resize
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_read_ft godot_pool_int_array_read
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_write_ft godot_pool_int_array_write
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_set_ft godot_pool_int_array_set
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_get_ft godot_pool_int_array_get
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_size_ft godot_pool_int_array_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_destroy_ft godot_pool_int_array_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_new_ft godot_pool_real_array_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_new_copy_ft godot_pool_real_array_new_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_new_with_array_ft godot_pool_real_array_new_with_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_append_ft godot_pool_real_array_append
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_append_array_ft godot_pool_real_array_append_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_insert_ft godot_pool_real_array_insert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_invert_ft godot_pool_real_array_invert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_push_back_ft godot_pool_real_array_push_back
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_remove_ft godot_pool_real_array_remove
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_resize_ft godot_pool_real_array_resize
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_read_ft godot_pool_real_array_read
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_write_ft godot_pool_real_array_write
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_set_ft godot_pool_real_array_set
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_get_ft godot_pool_real_array_get
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_size_ft godot_pool_real_array_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_destroy_ft godot_pool_real_array_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_new_ft godot_pool_string_array_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_new_copy_ft godot_pool_string_array_new_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_new_with_array_ft godot_pool_string_array_new_with_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_append_ft godot_pool_string_array_append
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_append_array_ft godot_pool_string_array_append_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_insert_ft godot_pool_string_array_insert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_invert_ft godot_pool_string_array_invert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_push_back_ft godot_pool_string_array_push_back
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_remove_ft godot_pool_string_array_remove
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_resize_ft godot_pool_string_array_resize
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_read_ft godot_pool_string_array_read
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_write_ft godot_pool_string_array_write
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_set_ft godot_pool_string_array_set
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_get_ft godot_pool_string_array_get
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_size_ft godot_pool_string_array_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_destroy_ft godot_pool_string_array_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_new_ft godot_pool_vector2_array_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_new_copy_ft godot_pool_vector2_array_new_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_new_with_array_ft godot_pool_vector2_array_new_with_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_append_ft godot_pool_vector2_array_append
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_append_array_ft godot_pool_vector2_array_append_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_insert_ft godot_pool_vector2_array_insert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_invert_ft godot_pool_vector2_array_invert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_push_back_ft godot_pool_vector2_array_push_back
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_remove_ft godot_pool_vector2_array_remove
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_resize_ft godot_pool_vector2_array_resize
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_read_ft godot_pool_vector2_array_read
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_write_ft godot_pool_vector2_array_write
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_set_ft godot_pool_vector2_array_set
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_get_ft godot_pool_vector2_array_get
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_size_ft godot_pool_vector2_array_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_destroy_ft godot_pool_vector2_array_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_new_ft godot_pool_vector3_array_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_new_copy_ft godot_pool_vector3_array_new_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_new_with_array_ft godot_pool_vector3_array_new_with_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_append_ft godot_pool_vector3_array_append
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_append_array_ft godot_pool_vector3_array_append_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_insert_ft godot_pool_vector3_array_insert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_invert_ft godot_pool_vector3_array_invert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_push_back_ft godot_pool_vector3_array_push_back
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_remove_ft godot_pool_vector3_array_remove
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_resize_ft godot_pool_vector3_array_resize
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_read_ft godot_pool_vector3_array_read
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_write_ft godot_pool_vector3_array_write
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_set_ft godot_pool_vector3_array_set
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_get_ft godot_pool_vector3_array_get
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_size_ft godot_pool_vector3_array_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_destroy_ft godot_pool_vector3_array_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_new_ft godot_pool_color_array_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_new_copy_ft godot_pool_color_array_new_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_new_with_array_ft godot_pool_color_array_new_with_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_append_ft godot_pool_color_array_append
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_append_array_ft godot_pool_color_array_append_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_insert_ft godot_pool_color_array_insert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_invert_ft godot_pool_color_array_invert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_push_back_ft godot_pool_color_array_push_back
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_remove_ft godot_pool_color_array_remove
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_resize_ft godot_pool_color_array_resize
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_read_ft godot_pool_color_array_read
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_write_ft godot_pool_color_array_write
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_set_ft godot_pool_color_array_set
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_get_ft godot_pool_color_array_get
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_size_ft godot_pool_color_array_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_destroy_ft godot_pool_color_array_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_read_access_copy_ft godot_pool_byte_array_read_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_read_access_ptr_ft godot_pool_byte_array_read_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_read_access_operator_assign_ft godot_pool_byte_array_read_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_read_access_destroy_ft godot_pool_byte_array_read_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_read_access_copy_ft godot_pool_int_array_read_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_read_access_ptr_ft godot_pool_int_array_read_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_read_access_operator_assign_ft godot_pool_int_array_read_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_read_access_destroy_ft godot_pool_int_array_read_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_read_access_copy_ft godot_pool_real_array_read_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_read_access_ptr_ft godot_pool_real_array_read_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_read_access_operator_assign_ft godot_pool_real_array_read_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_read_access_destroy_ft godot_pool_real_array_read_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_read_access_copy_ft godot_pool_string_array_read_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_read_access_ptr_ft godot_pool_string_array_read_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_read_access_operator_assign_ft godot_pool_string_array_read_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_read_access_destroy_ft godot_pool_string_array_read_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_read_access_copy_ft godot_pool_vector2_array_read_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_read_access_ptr_ft godot_pool_vector2_array_read_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_read_access_operator_assign_ft godot_pool_vector2_array_read_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_read_access_destroy_ft godot_pool_vector2_array_read_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_read_access_copy_ft godot_pool_vector3_array_read_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_read_access_ptr_ft godot_pool_vector3_array_read_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_read_access_operator_assign_ft godot_pool_vector3_array_read_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_read_access_destroy_ft godot_pool_vector3_array_read_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_read_access_copy_ft godot_pool_color_array_read_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_read_access_ptr_ft godot_pool_color_array_read_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_read_access_operator_assign_ft godot_pool_color_array_read_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_read_access_destroy_ft godot_pool_color_array_read_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_write_access_copy_ft godot_pool_byte_array_write_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_write_access_ptr_ft godot_pool_byte_array_write_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_write_access_operator_assign_ft godot_pool_byte_array_write_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_byte_array_write_access_destroy_ft godot_pool_byte_array_write_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_write_access_copy_ft godot_pool_int_array_write_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_write_access_ptr_ft godot_pool_int_array_write_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_write_access_operator_assign_ft godot_pool_int_array_write_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_int_array_write_access_destroy_ft godot_pool_int_array_write_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_write_access_copy_ft godot_pool_real_array_write_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_write_access_ptr_ft godot_pool_real_array_write_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_write_access_operator_assign_ft godot_pool_real_array_write_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_real_array_write_access_destroy_ft godot_pool_real_array_write_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_write_access_copy_ft godot_pool_string_array_write_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_write_access_ptr_ft godot_pool_string_array_write_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_write_access_operator_assign_ft godot_pool_string_array_write_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_string_array_write_access_destroy_ft godot_pool_string_array_write_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_write_access_copy_ft godot_pool_vector2_array_write_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_write_access_ptr_ft godot_pool_vector2_array_write_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_write_access_operator_assign_ft godot_pool_vector2_array_write_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector2_array_write_access_destroy_ft godot_pool_vector2_array_write_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_write_access_copy_ft godot_pool_vector3_array_write_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_write_access_ptr_ft godot_pool_vector3_array_write_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_write_access_operator_assign_ft godot_pool_vector3_array_write_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_vector3_array_write_access_destroy_ft godot_pool_vector3_array_write_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_write_access_copy_ft godot_pool_color_array_write_access_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_write_access_ptr_ft godot_pool_color_array_write_access_ptr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_write_access_operator_assign_ft godot_pool_color_array_write_access_operator_assign
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_pool_color_array_write_access_destroy_ft godot_pool_color_array_write_access_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_ft godot_array_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_copy_ft godot_array_new_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_color_array_ft godot_array_new_pool_color_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_vector3_array_ft godot_array_new_pool_vector3_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_vector2_array_ft godot_array_new_pool_vector2_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_string_array_ft godot_array_new_pool_string_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_real_array_ft godot_array_new_pool_real_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_int_array_ft godot_array_new_pool_int_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_new_pool_byte_array_ft godot_array_new_pool_byte_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_set_ft godot_array_set
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_get_ft godot_array_get
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_operator_index_ft godot_array_operator_index
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_operator_index_const_ft godot_array_operator_index_const
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_append_ft godot_array_append
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_clear_ft godot_array_clear
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_count_ft godot_array_count
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_empty_ft godot_array_empty
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_erase_ft godot_array_erase
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_front_ft godot_array_front
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_back_ft godot_array_back
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_find_ft godot_array_find
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_find_last_ft godot_array_find_last
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_has_ft godot_array_has
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_hash_ft godot_array_hash
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_insert_ft godot_array_insert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_invert_ft godot_array_invert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_pop_back_ft godot_array_pop_back
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_pop_front_ft godot_array_pop_front
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_push_back_ft godot_array_push_back
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_push_front_ft godot_array_push_front
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_remove_ft godot_array_remove
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_resize_ft godot_array_resize
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_rfind_ft godot_array_rfind
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_size_ft godot_array_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_sort_ft godot_array_sort
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_sort_custom_ft godot_array_sort_custom
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_bsearch_ft godot_array_bsearch
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_bsearch_custom_ft godot_array_bsearch_custom
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_array_destroy_ft godot_array_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_new_ft godot_dictionary_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_new_copy_ft godot_dictionary_new_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_destroy_ft godot_dictionary_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_size_ft godot_dictionary_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_empty_ft godot_dictionary_empty
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_clear_ft godot_dictionary_clear
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_has_ft godot_dictionary_has
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_has_all_ft godot_dictionary_has_all
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_erase_ft godot_dictionary_erase
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_hash_ft godot_dictionary_hash
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_keys_ft godot_dictionary_keys
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_values_ft godot_dictionary_values
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_get_ft godot_dictionary_get
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_set_ft godot_dictionary_set
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_operator_index_ft godot_dictionary_operator_index
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_operator_index_const_ft godot_dictionary_operator_index_const
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_next_ft godot_dictionary_next
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_operator_equal_ft godot_dictionary_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_dictionary_to_json_ft godot_dictionary_to_json
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_new_ft godot_node_path_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_new_copy_ft godot_node_path_new_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_destroy_ft godot_node_path_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_as_string_ft godot_node_path_as_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_is_absolute_ft godot_node_path_is_absolute
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_get_name_count_ft godot_node_path_get_name_count
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_get_name_ft godot_node_path_get_name
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_get_subname_count_ft godot_node_path_get_subname_count
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_get_subname_ft godot_node_path_get_subname
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_get_concatenated_subnames_ft godot_node_path_get_concatenated_subnames
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_is_empty_ft godot_node_path_is_empty
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_node_path_operator_equal_ft godot_node_path_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_new_with_reals_ft godot_plane_new_with_reals
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_new_with_vectors_ft godot_plane_new_with_vectors
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_new_with_normal_ft godot_plane_new_with_normal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_as_string_ft godot_plane_as_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_normalized_ft godot_plane_normalized
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_center_ft godot_plane_center
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_get_any_point_ft godot_plane_get_any_point
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_is_point_over_ft godot_plane_is_point_over
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_distance_to_ft godot_plane_distance_to
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_has_point_ft godot_plane_has_point
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_project_ft godot_plane_project
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_intersect_3_ft godot_plane_intersect_3
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_intersects_ray_ft godot_plane_intersects_ray
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_intersects_segment_ft godot_plane_intersects_segment
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_operator_neg_ft godot_plane_operator_neg
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_operator_equal_ft godot_plane_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_set_normal_ft godot_plane_set_normal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_get_normal_ft godot_plane_get_normal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_get_d_ft godot_plane_get_d
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_plane_set_d_ft godot_plane_set_d
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_new_with_position_and_size_ft godot_rect2_new_with_position_and_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_new_ft godot_rect2_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_as_string_ft godot_rect2_as_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_get_area_ft godot_rect2_get_area
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_intersects_ft godot_rect2_intersects
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_encloses_ft godot_rect2_encloses
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_has_no_area_ft godot_rect2_has_no_area
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_clip_ft godot_rect2_clip
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_merge_ft godot_rect2_merge
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_has_point_ft godot_rect2_has_point
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_grow_ft godot_rect2_grow
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_expand_ft godot_rect2_expand
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_operator_equal_ft godot_rect2_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_get_position_ft godot_rect2_get_position
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_get_size_ft godot_rect2_get_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_set_position_ft godot_rect2_set_position
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rect2_set_size_ft godot_rect2_set_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_new_ft godot_aabb_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_position_ft godot_aabb_get_position
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_set_position_ft godot_aabb_set_position
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_size_ft godot_aabb_get_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_set_size_ft godot_aabb_set_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_as_string_ft godot_aabb_as_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_area_ft godot_aabb_get_area
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_has_no_area_ft godot_aabb_has_no_area
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_has_no_surface_ft godot_aabb_has_no_surface
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_intersects_ft godot_aabb_intersects
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_encloses_ft godot_aabb_encloses
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_merge_ft godot_aabb_merge
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_intersection_ft godot_aabb_intersection
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_intersects_plane_ft godot_aabb_intersects_plane
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_intersects_segment_ft godot_aabb_intersects_segment
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_has_point_ft godot_aabb_has_point
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_support_ft godot_aabb_get_support
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_longest_axis_ft godot_aabb_get_longest_axis
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_longest_axis_index_ft godot_aabb_get_longest_axis_index
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_longest_axis_size_ft godot_aabb_get_longest_axis_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_shortest_axis_ft godot_aabb_get_shortest_axis
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_shortest_axis_index_ft godot_aabb_get_shortest_axis_index
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_shortest_axis_size_ft godot_aabb_get_shortest_axis_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_expand_ft godot_aabb_expand
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_grow_ft godot_aabb_grow
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_get_endpoint_ft godot_aabb_get_endpoint
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_aabb_operator_equal_ft godot_aabb_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rid_new_ft godot_rid_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rid_get_id_ft godot_rid_get_id
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rid_new_with_resource_ft godot_rid_new_with_resource
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rid_operator_equal_ft godot_rid_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_rid_operator_less_ft godot_rid_operator_less
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_new_with_axis_origin_ft godot_transform_new_with_axis_origin
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_new_ft godot_transform_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_get_basis_ft godot_transform_get_basis
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_set_basis_ft godot_transform_set_basis
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_get_origin_ft godot_transform_get_origin
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_set_origin_ft godot_transform_set_origin
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_as_string_ft godot_transform_as_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_inverse_ft godot_transform_inverse
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_affine_inverse_ft godot_transform_affine_inverse
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_orthonormalized_ft godot_transform_orthonormalized
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_rotated_ft godot_transform_rotated
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_scaled_ft godot_transform_scaled
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_translated_ft godot_transform_translated
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_looking_at_ft godot_transform_looking_at
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_xform_plane_ft godot_transform_xform_plane
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_xform_inv_plane_ft godot_transform_xform_inv_plane
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_new_identity_ft godot_transform_new_identity
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_operator_equal_ft godot_transform_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_operator_multiply_ft godot_transform_operator_multiply
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_xform_vector3_ft godot_transform_xform_vector3
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_xform_inv_vector3_ft godot_transform_xform_inv_vector3
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_xform_aabb_ft godot_transform_xform_aabb
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform_xform_inv_aabb_ft godot_transform_xform_inv_aabb
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_new_ft godot_transform2d_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_new_axis_origin_ft godot_transform2d_new_axis_origin
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_as_string_ft godot_transform2d_as_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_inverse_ft godot_transform2d_inverse
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_affine_inverse_ft godot_transform2d_affine_inverse
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_get_rotation_ft godot_transform2d_get_rotation
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_get_origin_ft godot_transform2d_get_origin
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_get_scale_ft godot_transform2d_get_scale
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_orthonormalized_ft godot_transform2d_orthonormalized
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_rotated_ft godot_transform2d_rotated
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_scaled_ft godot_transform2d_scaled
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_translated_ft godot_transform2d_translated
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_xform_vector2_ft godot_transform2d_xform_vector2
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_xform_inv_vector2_ft godot_transform2d_xform_inv_vector2
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_basis_xform_vector2_ft godot_transform2d_basis_xform_vector2
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_basis_xform_inv_vector2_ft godot_transform2d_basis_xform_inv_vector2
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_interpolate_with_ft godot_transform2d_interpolate_with
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_operator_equal_ft godot_transform2d_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_operator_multiply_ft godot_transform2d_operator_multiply
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_new_identity_ft godot_transform2d_new_identity
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_xform_rect2_ft godot_transform2d_xform_rect2
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_transform2d_xform_inv_rect2_ft godot_transform2d_xform_inv_rect2
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_get_type_ft godot_variant_get_type
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_copy_ft godot_variant_new_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_nil_ft godot_variant_new_nil
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_bool_ft godot_variant_new_bool
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_uint_ft godot_variant_new_uint
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_int_ft godot_variant_new_int
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_real_ft godot_variant_new_real
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_string_ft godot_variant_new_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_vector2_ft godot_variant_new_vector2
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_rect2_ft godot_variant_new_rect2
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_vector3_ft godot_variant_new_vector3
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_transform2d_ft godot_variant_new_transform2d
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_plane_ft godot_variant_new_plane
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_quat_ft godot_variant_new_quat
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_aabb_ft godot_variant_new_aabb
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_basis_ft godot_variant_new_basis
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_transform_ft godot_variant_new_transform
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_color_ft godot_variant_new_color
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_node_path_ft godot_variant_new_node_path
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_rid_ft godot_variant_new_rid
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_object_ft godot_variant_new_object
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_dictionary_ft godot_variant_new_dictionary
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_array_ft godot_variant_new_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_byte_array_ft godot_variant_new_pool_byte_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_int_array_ft godot_variant_new_pool_int_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_real_array_ft godot_variant_new_pool_real_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_string_array_ft godot_variant_new_pool_string_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_vector2_array_ft godot_variant_new_pool_vector2_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_vector3_array_ft godot_variant_new_pool_vector3_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_new_pool_color_array_ft godot_variant_new_pool_color_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_bool_ft godot_variant_as_bool
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_uint_ft godot_variant_as_uint
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_int_ft godot_variant_as_int
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_real_ft godot_variant_as_real
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_string_ft godot_variant_as_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_vector2_ft godot_variant_as_vector2
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_rect2_ft godot_variant_as_rect2
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_vector3_ft godot_variant_as_vector3
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_transform2d_ft godot_variant_as_transform2d
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_plane_ft godot_variant_as_plane
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_quat_ft godot_variant_as_quat
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_aabb_ft godot_variant_as_aabb
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_basis_ft godot_variant_as_basis
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_transform_ft godot_variant_as_transform
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_color_ft godot_variant_as_color
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_node_path_ft godot_variant_as_node_path
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_rid_ft godot_variant_as_rid
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_object_ft godot_variant_as_object
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_dictionary_ft godot_variant_as_dictionary
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_array_ft godot_variant_as_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_byte_array_ft godot_variant_as_pool_byte_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_int_array_ft godot_variant_as_pool_int_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_real_array_ft godot_variant_as_pool_real_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_string_array_ft godot_variant_as_pool_string_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_vector2_array_ft godot_variant_as_pool_vector2_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_vector3_array_ft godot_variant_as_pool_vector3_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_as_pool_color_array_ft godot_variant_as_pool_color_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_call_ft godot_variant_call
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_has_method_ft godot_variant_has_method
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_operator_equal_ft godot_variant_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_operator_less_ft godot_variant_operator_less
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_hash_compare_ft godot_variant_hash_compare
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_booleanize_ft godot_variant_booleanize
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_variant_destroy_ft godot_variant_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_char_string_length_ft godot_char_string_length
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_char_string_get_data_ft godot_char_string_get_data
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_char_string_destroy_ft godot_char_string_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_new_ft godot_string_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_new_copy_ft godot_string_new_copy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_new_with_wide_string_ft godot_string_new_with_wide_string
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_operator_index_ft godot_string_operator_index
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_operator_index_const_ft godot_string_operator_index_const
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_wide_str_ft godot_string_wide_str
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_operator_equal_ft godot_string_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_operator_less_ft godot_string_operator_less
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_operator_plus_ft godot_string_operator_plus
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_length_ft godot_string_length
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_casecmp_to_ft godot_string_casecmp_to
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_nocasecmp_to_ft godot_string_nocasecmp_to
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_naturalnocasecmp_to_ft godot_string_naturalnocasecmp_to
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_begins_with_ft godot_string_begins_with
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_begins_with_char_array_ft godot_string_begins_with_char_array
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_bigrams_ft godot_string_bigrams
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_chr_ft godot_string_chr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_ends_with_ft godot_string_ends_with
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_find_ft godot_string_find
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_find_from_ft godot_string_find_from
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_findmk_ft godot_string_findmk
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_findmk_from_ft godot_string_findmk_from
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_findmk_from_in_place_ft godot_string_findmk_from_in_place
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_findn_ft godot_string_findn
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_findn_from_ft godot_string_findn_from
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_find_last_ft godot_string_find_last
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_format_ft godot_string_format
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_format_with_custom_placeholder_ft godot_string_format_with_custom_placeholder
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hex_encode_buffer_ft godot_string_hex_encode_buffer
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hex_to_int_ft godot_string_hex_to_int
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hex_to_int_without_prefix_ft godot_string_hex_to_int_without_prefix
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_insert_ft godot_string_insert
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_numeric_ft godot_string_is_numeric
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_subsequence_of_ft godot_string_is_subsequence_of
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_subsequence_ofi_ft godot_string_is_subsequence_ofi
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_lpad_ft godot_string_lpad
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_lpad_with_custom_character_ft godot_string_lpad_with_custom_character
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_match_ft godot_string_match
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_matchn_ft godot_string_matchn
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_md5_ft godot_string_md5
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_num_ft godot_string_num
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_num_int64_ft godot_string_num_int64
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_num_int64_capitalized_ft godot_string_num_int64_capitalized
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_num_real_ft godot_string_num_real
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_num_scientific_ft godot_string_num_scientific
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_num_with_decimals_ft godot_string_num_with_decimals
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_pad_decimals_ft godot_string_pad_decimals
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_pad_zeros_ft godot_string_pad_zeros
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_replace_first_ft godot_string_replace_first
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_replace_ft godot_string_replace
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_replacen_ft godot_string_replacen
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_rfind_ft godot_string_rfind
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_rfindn_ft godot_string_rfindn
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_rfind_from_ft godot_string_rfind_from
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_rfindn_from_ft godot_string_rfindn_from
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_rpad_ft godot_string_rpad
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_rpad_with_custom_character_ft godot_string_rpad_with_custom_character
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_similarity_ft godot_string_similarity
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_sprintf_ft godot_string_sprintf
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_substr_ft godot_string_substr
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_to_double_ft godot_string_to_double
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_to_float_ft godot_string_to_float
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_to_int_ft godot_string_to_int
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_camelcase_to_underscore_ft godot_string_camelcase_to_underscore
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_camelcase_to_underscore_lowercased_ft godot_string_camelcase_to_underscore_lowercased
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_capitalize_ft godot_string_capitalize
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_char_to_double_ft godot_string_char_to_double
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_char_to_int_ft godot_string_char_to_int
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_wchar_to_int_ft godot_string_wchar_to_int
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_char_to_int_with_len_ft godot_string_char_to_int_with_len
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_char_to_int64_with_len_ft godot_string_char_to_int64_with_len
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hex_to_int64_ft godot_string_hex_to_int64
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hex_to_int64_with_prefix_ft godot_string_hex_to_int64_with_prefix
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_to_int64_ft godot_string_to_int64
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_unicode_char_to_double_ft godot_string_unicode_char_to_double
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_slice_count_ft godot_string_get_slice_count
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_slice_ft godot_string_get_slice
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_slicec_ft godot_string_get_slicec
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_ft godot_string_split
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_allow_empty_ft godot_string_split_allow_empty
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_floats_ft godot_string_split_floats
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_floats_allows_empty_ft godot_string_split_floats_allows_empty
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_floats_mk_ft godot_string_split_floats_mk
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_floats_mk_allows_empty_ft godot_string_split_floats_mk_allows_empty
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_ints_ft godot_string_split_ints
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_ints_allows_empty_ft godot_string_split_ints_allows_empty
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_ints_mk_ft godot_string_split_ints_mk
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_ints_mk_allows_empty_ft godot_string_split_ints_mk_allows_empty
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_split_spaces_ft godot_string_split_spaces
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_char_lowercase_ft godot_string_char_lowercase
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_char_uppercase_ft godot_string_char_uppercase
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_to_lower_ft godot_string_to_lower
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_to_upper_ft godot_string_to_upper
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_basename_ft godot_string_get_basename
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_extension_ft godot_string_get_extension
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_left_ft godot_string_left
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_ord_at_ft godot_string_ord_at
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_plus_file_ft godot_string_plus_file
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_right_ft godot_string_right
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_strip_edges_ft godot_string_strip_edges
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_strip_escapes_ft godot_string_strip_escapes
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_erase_ft godot_string_erase
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_ascii_ft godot_string_ascii
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_ascii_extended_ft godot_string_ascii_extended
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_utf8_ft godot_string_utf8
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_parse_utf8_ft godot_string_parse_utf8
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_parse_utf8_with_len_ft godot_string_parse_utf8_with_len
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_chars_to_utf8_ft godot_string_chars_to_utf8
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_chars_to_utf8_with_len_ft godot_string_chars_to_utf8_with_len
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hash_ft godot_string_hash
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hash64_ft godot_string_hash64
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hash_chars_ft godot_string_hash_chars
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hash_chars_with_len_ft godot_string_hash_chars_with_len
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hash_utf8_chars_ft godot_string_hash_utf8_chars
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_hash_utf8_chars_with_len_ft godot_string_hash_utf8_chars_with_len
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_md5_buffer_ft godot_string_md5_buffer
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_md5_text_ft godot_string_md5_text
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_sha256_buffer_ft godot_string_sha256_buffer
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_sha256_text_ft godot_string_sha256_text
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_empty_ft godot_string_empty
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_base_dir_ft godot_string_get_base_dir
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_get_file_ft godot_string_get_file
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_humanize_size_ft godot_string_humanize_size
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_abs_path_ft godot_string_is_abs_path
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_rel_path_ft godot_string_is_rel_path
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_resource_file_ft godot_string_is_resource_file
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_path_to_ft godot_string_path_to
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_path_to_file_ft godot_string_path_to_file
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_simplify_path_ft godot_string_simplify_path
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_c_escape_ft godot_string_c_escape
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_c_escape_multiline_ft godot_string_c_escape_multiline
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_c_unescape_ft godot_string_c_unescape
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_http_escape_ft godot_string_http_escape
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_http_unescape_ft godot_string_http_unescape
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_json_escape_ft godot_string_json_escape
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_word_wrap_ft godot_string_word_wrap
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_xml_escape_ft godot_string_xml_escape
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_xml_escape_with_quotes_ft godot_string_xml_escape_with_quotes
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_xml_unescape_ft godot_string_xml_unescape
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_percent_decode_ft godot_string_percent_decode
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_percent_encode_ft godot_string_percent_encode
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_valid_float_ft godot_string_is_valid_float
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_valid_hex_number_ft godot_string_is_valid_hex_number
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_valid_html_color_ft godot_string_is_valid_html_color
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_valid_identifier_ft godot_string_is_valid_identifier
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_valid_integer_ft godot_string_is_valid_integer
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_is_valid_ip_address_ft godot_string_is_valid_ip_address
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_destroy_ft godot_string_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_new_ft godot_string_name_new
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_new_data_ft godot_string_name_new_data
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_get_name_ft godot_string_name_get_name
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_get_hash_ft godot_string_name_get_hash
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_get_data_unique_pointer_ft godot_string_name_get_data_unique_pointer
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_operator_equal_ft godot_string_name_operator_equal
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_operator_less_ft godot_string_name_operator_less
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_string_name_destroy_ft godot_string_name_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_object_destroy_ft godot_object_destroy
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_global_get_singleton_ft godot_global_get_singleton
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_method_bind_get_method_ft godot_method_bind_get_method
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_method_bind_ptrcall_ft godot_method_bind_ptrcall
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_method_bind_call_ft godot_method_bind_call
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_get_class_constructor_ft godot_get_class_constructor
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_get_global_constants_ft godot_get_global_constants
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_register_native_call_type_ft godot_register_native_call_type
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_alloc_ft godot_alloc
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_realloc_ft godot_realloc
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_free_ft godot_free
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_print_error_ft godot_print_error
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_print_warning_ft godot_print_warning
        _godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_gdnative_core_api_struct_godot_print_ft godot_print
