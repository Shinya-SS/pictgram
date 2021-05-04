
[1mFrom:[0m /home/ec2-user/environment/pictgram/app/controllers/comments_controller.rb:5 CommentsController#create:

     [1;34m2[0m: [32mdef[0m [1;34mcreate[0m
     [1;34m3[0m:   user = current_user
     [1;34m4[0m:   binding.pry
 =>  [1;34m5[0m:   topic = [1;34;4mTopic[0m.find(params[[33m:topic_id[0m])
     [1;34m6[0m:   [1;34m# @comment = topic.comments.build(comment_params)[0m
     [1;34m7[0m:   [1;34m# @comment.user_id = user.idputs [0m
     [1;34m8[0m:   comment = [1;34;4mComment[0m.new([35muser_id[0m: user.id, [35mtopic_id[0m: topic.id, [35mcomment[0m: comment_params)
     [1;34m9[0m:   [1;34m# binding.pry[0m
    [1;34m10[0m:   
    [1;34m11[0m:   [32mif[0m comment.save
    [1;34m12[0m:     redirect_to topics_path, [35msuccess[0m: [31m[1;31m'[0m[31mコメントを投稿しました[1;31m'[0m[31m[0m
    [1;34m13[0m:   [32melse[0m
    [1;34m14[0m:     redirect_to topics_path, [35mdanger[0m: [31m[1;31m'[0m[31mコメント投稿に失敗しました[1;31m'[0m[31m[0m
    [1;34m15[0m:   [32mend[0m
    [1;34m16[0m: [32mend[0m

