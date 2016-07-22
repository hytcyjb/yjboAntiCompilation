.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$7;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    .line 684
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$7;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$7;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    #calls: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->genBackground()V
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    .line 687
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$7;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1300(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$7;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1200(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 688
    return-void
.end method
