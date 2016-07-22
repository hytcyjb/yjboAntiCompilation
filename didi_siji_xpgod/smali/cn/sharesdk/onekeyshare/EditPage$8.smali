.class Lcn/sharesdk/onekeyshare/EditPage$8;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/EditPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    .line 773
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPage$8;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage$8;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #calls: Lcn/sharesdk/onekeyshare/EditPage;->genBackground()V
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/EditPage;->access$1100(Lcn/sharesdk/onekeyshare/EditPage;)V

    .line 776
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPage$8;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/EditPage;->rlPage:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/EditPage;->access$1300(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/EditPage$8;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/EditPage;->background:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/EditPage;->access$1200(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 777
    return-void
.end method
