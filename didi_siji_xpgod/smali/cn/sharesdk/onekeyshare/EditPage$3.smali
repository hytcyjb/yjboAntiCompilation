.class Lcn/sharesdk/onekeyshare/EditPage$3;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/EditPage;->getThumbView()Landroid/widget/RelativeLayout;
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
    .line 312
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x8

    .line 315
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/EditPage;->rlThumb:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/EditPage;->access$300(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/EditPage;->ivPin:Landroid/widget/ImageView;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/EditPage;->access$400(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    const/4 v1, 0x0

    #setter for: Lcn/sharesdk/onekeyshare/EditPage;->shareImage:Z
    invoke-static {v0, v1}, Lcn/sharesdk/onekeyshare/EditPage;->access$502(Lcn/sharesdk/onekeyshare/EditPage;Z)Z

    .line 318
    return-void
.end method
