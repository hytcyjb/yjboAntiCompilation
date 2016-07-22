.class Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$3;
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

.field final synthetic val$imageInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    iput-object p2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$3;->val$imageInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 157
    new-instance v0, Lcn/sharesdk/onekeyshare/PicViewer;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/PicViewer;-><init>()V

    .line 158
    .local v0, pv:Lcn/sharesdk/onekeyshare/PicViewer;
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$3;->val$imageInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    iget-object v1, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/PicViewer;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->access$200(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/onekeyshare/PicViewer;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 160
    return-void
.end method
