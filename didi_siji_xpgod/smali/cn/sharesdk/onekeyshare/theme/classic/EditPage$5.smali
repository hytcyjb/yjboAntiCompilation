.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getAtLine(Ljava/lang/String;)Landroid/widget/LinearLayout;
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
    .line 385
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 387
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;-><init>()V

    .line 388
    .local v0, subPage:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$800(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 389
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$900(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcn/sharesdk/framework/FakeActivity;)V

    .line 390
    return-void
.end method
