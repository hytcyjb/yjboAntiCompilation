.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getThumbView()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 296
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    new-instance v0, Lcn/sharesdk/onekeyshare/PicViewer;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/PicViewer;-><init>()V

    .line 298
    .local v0, pv:Lcn/sharesdk/onekeyshare/PicViewer;
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/PicViewer;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$200(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/onekeyshare/PicViewer;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 301
    .end local v0           #pv:Lcn/sharesdk/onekeyshare/PicViewer;
    :cond_0
    return-void
.end method
