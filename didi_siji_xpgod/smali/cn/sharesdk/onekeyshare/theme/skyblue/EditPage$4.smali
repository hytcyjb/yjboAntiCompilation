.class Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$4;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->makeImageItemView(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    iput-object p2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 168
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$4;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    #calls: Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->removeImage(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V
    invoke-static {v1, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->access$300(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V

    .line 170
    return-void
.end method
