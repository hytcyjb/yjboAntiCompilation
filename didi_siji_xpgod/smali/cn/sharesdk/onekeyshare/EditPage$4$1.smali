.class Lcn/sharesdk/onekeyshare/EditPage$4$1;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/EditPage$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/sharesdk/onekeyshare/EditPage$4;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/EditPage$4;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPage$4$1;->this$1:Lcn/sharesdk/onekeyshare/EditPage$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage$4$1;->this$1:Lcn/sharesdk/onekeyshare/EditPage$4;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/EditPage;->rlThumb:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/EditPage;->access$300(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage$4$1;->this$1:Lcn/sharesdk/onekeyshare/EditPage$4;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/EditPage;->ivPin:Landroid/widget/ImageView;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/EditPage;->access$400(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage$4$1;->this$1:Lcn/sharesdk/onekeyshare/EditPage$4;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/EditPage;->ivImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/EditPage;->access$800(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/EditPage$4$1;->this$1:Lcn/sharesdk/onekeyshare/EditPage$4;

    iget-object v1, v1, Lcn/sharesdk/onekeyshare/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/EditPage;->image:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/EditPage;->access$100(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    return v2
.end method
