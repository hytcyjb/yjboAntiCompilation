.class Lcn/sharesdk/onekeyshare/EditPage$4;
.super Ljava/lang/Thread;
.source "EditPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/EditPage;->showThumb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/EditPage;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 371
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/EditPage;->access$600(Lcn/sharesdk/onekeyshare/EditPage;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "imageUrl"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, imageUrl:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    const/4 v3, 0x1

    #setter for: Lcn/sharesdk/onekeyshare/EditPage;->shareImage:Z
    invoke-static {v2, v3}, Lcn/sharesdk/onekeyshare/EditPage;->access$502(Lcn/sharesdk/onekeyshare/EditPage;Z)Z

    .line 374
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcn/sharesdk/onekeyshare/EditPage;->access$700(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcn/sharesdk/framework/utils/BitmapHelper;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcn/sharesdk/onekeyshare/EditPage;->image:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcn/sharesdk/onekeyshare/EditPage;->access$102(Lcn/sharesdk/onekeyshare/EditPage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/EditPage;->shareImage:Z
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/EditPage;->access$500(Lcn/sharesdk/onekeyshare/EditPage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    new-instance v2, Lcn/sharesdk/onekeyshare/EditPage$4$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/onekeyshare/EditPage$4$1;-><init>(Lcn/sharesdk/onekeyshare/EditPage$4;)V

    invoke-static {v4, v2}, Lcn/sharesdk/framework/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 391
    :cond_0
    return-void

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, t:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 377
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    const/4 v3, 0x0

    #setter for: Lcn/sharesdk/onekeyshare/EditPage;->shareImage:Z
    invoke-static {v2, v3}, Lcn/sharesdk/onekeyshare/EditPage;->access$502(Lcn/sharesdk/onekeyshare/EditPage;Z)Z

    .line 378
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    const/4 v3, 0x0

    #setter for: Lcn/sharesdk/onekeyshare/EditPage;->image:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcn/sharesdk/onekeyshare/EditPage;->access$102(Lcn/sharesdk/onekeyshare/EditPage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method
