extern "C" {
    fn rust_call_c();
    // fn bar_function(x: i32) -> i32;
}

fn main() {
    unsafe {
        rust_call_c();
    }
}
