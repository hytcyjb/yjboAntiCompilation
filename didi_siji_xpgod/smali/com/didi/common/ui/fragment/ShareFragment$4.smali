.class Lcom/didi/common/ui/fragment/ShareFragment$4;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/TabGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/ShareFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/ShareFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/didi/common/ui/component/TabGroup;I)V
    .locals 6
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 270
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->isFirst:Z
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$300(Lcom/didi/common/ui/fragment/ShareFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-static {}, Lcom/didi/common/helper/SoundHelper;->playClick()V

    .line 275
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 320
    :goto_1
    return-void

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #setter for: Lcom/didi/common/ui/fragment/ShareFragment;->isFirst:Z
    invoke-static {v1, v5}, Lcom/didi/common/ui/fragment/ShareFragment;->access$302(Lcom/didi/common/ui/fragment/ShareFragment;Z)Z

    goto :goto_0

    .line 277
    :pswitch_0
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v1

    const v2, 0x7f0b03a2

    iget-object v3, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mRightButtonListenser:Landroid/view/View$OnClickListener;
    invoke-static {v3}, Lcom/didi/common/ui/fragment/ShareFragment;->access$400(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 278
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$500(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mSinaData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$600(Lcom/didi/common/ui/fragment/ShareFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 280
    sget-object v1, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 281
    .local v0, platform:Lcn/sharesdk/framework/Platform;
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #calls: Lcom/didi/common/ui/fragment/ShareFragment;->getSinaWeiboFriends()V
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$700(Lcom/didi/common/ui/fragment/ShareFragment;)V

    .line 283
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mBindView:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$800(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mBindBtn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$900(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mBindTip:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1000(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b04f6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 287
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mBindView:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$800(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mBindBtn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$900(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mBindBtn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$900(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b04f5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 290
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1100(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_1

    .line 293
    .end local v0           #platform:Lcn/sharesdk/framework/Platform;
    :cond_2
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    new-instance v2, Lcom/didi/common/ui/fragment/ShareListAdapter;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mSinaData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/didi/common/ui/fragment/ShareFragment;->access$600(Lcom/didi/common/ui/fragment/ShareFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/didi/common/ui/fragment/ShareListAdapter;-><init>(Ljava/util/ArrayList;)V

    #setter for: Lcom/didi/common/ui/fragment/ShareFragment;->mShareAdapter:Lcom/didi/common/ui/fragment/ShareListAdapter;
    invoke-static {v1, v2}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1202(Lcom/didi/common/ui/fragment/ShareFragment;Lcom/didi/common/ui/fragment/ShareListAdapter;)Lcom/didi/common/ui/fragment/ShareListAdapter;

    .line 294
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1100(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mShareAdapter:Lcom/didi/common/ui/fragment/ShareListAdapter;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1200(Lcom/didi/common/ui/fragment/ShareFragment;)Lcom/didi/common/ui/fragment/ShareListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 295
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mBindView:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$800(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mBindBtn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$900(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1100(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 298
    new-instance v1, Lcom/didi/common/ui/fragment/ShareFragment$4$1;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/ShareFragment$4$1;-><init>(Lcom/didi/common/ui/fragment/ShareFragment$4;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lcom/didi/common/handler/UiThreadHandler;->postOnceDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$500(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b050c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 309
    :pswitch_1
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 310
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mProgress:Lcom/didi/common/ui/component/MyProgressBar;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1300(Lcom/didi/common/ui/fragment/ShareFragment;)Lcom/didi/common/ui/component/MyProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/didi/common/ui/component/MyProgressBar;->setVisibility(I)V

    .line 311
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mBindTip:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1000(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$500(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mBindView:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$800(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mBindBtn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$900(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1100(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$4;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mBindBtn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/ShareFragment;->access$900(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b050b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x7f08054f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
