# #!/bin/sh

# # Fig. 3
# python main.py --ham hop --n 100 --beta 0.3 --net_depth 1 --net_width 1 --z2 --batch_size 10000 --beta_anneal_to 1.5 --beta_inc 0.1 --clip_grad 1 --cuda 0

# # Fig. 4(a)
# python main.py --ham sk --n 20 --beta 0.1 --net_depth 1 --net_width 1 --z2 --batch_size 10000 --beta_anneal_to 5 --beta_inc 0.1 --clip_grad 1 --cuda 0

# # Fig. 4(b)
# for beta in `seq 0.1 0.1 2`; do
#     python main_inv_ising.py --n 20 --beta $beta --net_depth 2 --net_width 5 --z2 --batch_size 10000 --clip_grad 1 --cuda 0
# done

# random seed 2050
python main.py --seed 2050 --ham sk --n 20 --beta 0.1 --net_depth 1 --net_width 1 --z2 --batch_size 10000 --beta_anneal_to 10.0 --beta_inc 0.1 --clip_grad 1 --cuda 7 --myfname van_n_20_d1_w1.txt

python main.py --seed 2050 --ham sk --n 20 --beta 0.1 --net_depth 2 --net_width 1 --z2 --batch_size 10000 --beta_anneal_to 10.0 --beta_inc 0.1 --clip_grad 1 --cuda 7 --myfname van_n_20_d2_w1.txt

python main.py --seed 2050 --ham sk --n 20 --beta 0.1 --net_depth 2 --net_width 5 --z2 --batch_size 10000 --beta_anneal_to 10.0 --beta_inc 0.1 --clip_grad 1 --cuda 7 --myfname van_n_20_d2_w5.txt

python main.py --seed 2050 --ham sk --n 20 --beta 0.1 --net_depth 2 --net_width 10 --z2 --batch_size 10000 --beta_anneal_to 10.0 --beta_inc 0.1 --clip_grad 1 --cuda 7 --myfname van_n_20_d2_w10.txt