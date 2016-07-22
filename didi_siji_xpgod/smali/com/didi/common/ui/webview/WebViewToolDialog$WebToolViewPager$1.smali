.class Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;
.super Ljava/lang/Object;
.source "WebViewToolDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

.field final synthetic val$vPosition:I


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    iput p2, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->val$vPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->this$0:Lcom/didi/common/ui/webview/WebViewToolDialog;

    iget-object v1, v1, Lcom/didi/common/ui/webview/WebViewToolDialog;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    #getter for: Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->access$200(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->this$0:Lcom/didi/common/ui/webview/WebViewToolDialog;

    iget-object v2, v2, Lcom/didi/common/ui/webview/WebViewToolDialog;->mCustomView:Landroid/view/View;

    #calls: Lcom/didi/common/ui/webview/WebViewToolDialog;->dissmiss(Landroid/app/AlertDialog;Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/didi/common/ui/webview/WebViewToolDialog;->access$000(Landroid/app/AlertDialog;Landroid/view/View;)V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    #getter for: Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->mData:Ljava/util/List;
    invoke-static {v1}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->access$300(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->val$vPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/webview/WebViewToolModel;

    .line 206
    .local v0, model:Lcom/didi/common/ui/webview/WebViewToolModel;
    const-string v1, "page_close"

    iget-object v2, v0, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    #getter for: Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->callback:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v1}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->access$400(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->close()V

    .line 225
    :goto_0
    return-void

    .line 208
    :cond_1
    const-string v1, "page_refresh"

    iget-object v2, v0, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    #getter for: Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->callback:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v1}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->access$400(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->refresh()V

    goto :goto_0

    .line 210
    :cond_2
    const-string v1, "web_redirect"

    iget-object v2, v0, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    #getter for: Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->callback:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v1}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->access$400(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->webRedirect(Lcom/didi/common/ui/webview/WebViewToolModel;)V

    goto :goto_0

    .line 212
    :cond_3
    const-string v1, "share_weixin_appmsg"

    iget-object v2, v0, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 213
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    #getter for: Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->callback:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v1}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->access$400(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v1

    iget-object v2, v0, Lcom/didi/common/ui/webview/WebViewToolModel;->onkKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    invoke-interface {v1, v2}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->showShareView(Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V

    goto :goto_0

    .line 214
    :cond_4
    const-string v1, "share_weixin_timeline"

    iget-object v2, v0, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 215
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    #getter for: Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->callback:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v1}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->access$400(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v1

    iget-object v2, v0, Lcom/didi/common/ui/webview/WebViewToolModel;->onkKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    invoke-interface {v1, v2}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->showShareView(Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V

    goto :goto_0

    .line 216
    :cond_5
    const-string v1, "share_sina_weibo"

    iget-object v2, v0, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 217
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    #getter for: Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->callback:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v1}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->access$400(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v1

    iget-object v2, v0, Lcom/didi/common/ui/webview/WebViewToolModel;->onkKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    invoke-interface {v1, v2}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->showShareView(Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V

    goto :goto_0

    .line 218
    :cond_6
    const-string v1, "share_qq_appmsg"

    iget-object v2, v0, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 219
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    #getter for: Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->callback:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v1}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->access$400(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v1

    iget-object v2, v0, Lcom/didi/common/ui/webview/WebViewToolModel;->onkKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    invoke-interface {v1, v2}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->showShareView(Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V

    goto :goto_0

    .line 220
    :cond_7
    const-string v1, "share_qzone"

    iget-object v2, v0, Lcom/didi/common/ui/webview/WebViewToolModel;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 221
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;->this$1:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;

    #getter for: Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->callback:Lcom/didi/common/ui/webview/JSBridgeCallBack;
    invoke-static {v1}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->access$400(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;)Lcom/didi/common/ui/webview/JSBridgeCallBack;

    move-result-object v1

    iget-object v2, v0, Lcom/didi/common/ui/webview/WebViewToolModel;->onkKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    invoke-interface {v1, v2}, Lcom/didi/common/ui/webview/JSBridgeCallBack;->showShareView(Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V

    goto/16 :goto_0

    .line 223
    :cond_8
    const v1, 0x7f0b0592

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    goto/16 :goto_0
.end method
