use candle_core::{Device, Tensor};

fn main() -> Result<(), candle_core::Error> {
    let device = Device::Cpu;

    // 创建 0 维张量（标量）
    let tensor0d = Tensor::new(&[1u8], &device)?;

    // 创建 1 维张量（向量）
    let tensor1d = Tensor::new(&[1., 2., 3.], &device)?;

    // 创建 2 维张量（矩阵）
    let tensor2d = Tensor::new(&[[1., 2.], [3., 4.]], &device)?;

    // 创建 3 维张量
    let tensor3d = Tensor::new(&[[[1., 2.], [3., 4.]], [[5., 6.], [7., 8.]]], &device)?;
    println!(
        "tensor0d_shape={:?},tensor1d_shape={:?},tensor2d_shape={:?},tensor3d_shape={:?}",
        tensor0d.shape(),
        tensor1d.shape(),
        tensor2d.shape(),
        tensor3d.shape()
    );
    Ok(())
}
