# for i in logs/blender_chair_posXYZ_posVIEW_fine1024_log2T19_lr0.0005_decay500/*.tar; do
#     CUDA_VISIBLE_DEVICES=2 python run_nerf.py --config configs/chair.txt --finest_res 1024 --i_embed 0 --i_embed_views 0 --render_only --ft_path $i
# done
# for i in logs/blender_chair_hashXYZ_sphereVIEW_fine1024_log2T19_lr0.01_decay10/*.tar; do
#     CUDA_VISIBLE_DEVICES=3 python run_nerf.py --config configs/chair.txt --finest_res 1024 --render_only --ft_path $i
# done
for i in logs/blender_chair_hashXYZ_sphereVIEW_fine1024_log2T19_lr0.01_decay10_po2c/*.tar; do
    CUDA_VISIBLE_DEVICES=4 python run_nerf.py --config configs/chair.txt --finest_res 1024 --render_only --ft_path $i
done
