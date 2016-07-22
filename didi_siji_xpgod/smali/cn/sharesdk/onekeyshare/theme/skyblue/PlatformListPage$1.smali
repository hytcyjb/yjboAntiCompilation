.class Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage$1;
.super Landroid/os/AsyncTask;
.source "PlatformListPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcn/sharesdk/framework/Platform;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage$1;->doInBackground([Ljava/lang/Void;)[Lcn/sharesdk/framework/Platform;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Lcn/sharesdk/framework/Platform;
    .locals 1
    .parameter "params"

    .prologue
    .line 54
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getPlatformList()[Lcn/sharesdk/framework/Platform;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, [Lcn/sharesdk/framework/Platform;

    .end local p1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage$1;->onPostExecute([Lcn/sharesdk/framework/Platform;)V

    return-void
.end method

.method protected onPostExecute([Lcn/sharesdk/framework/Platform;)V
    .locals 2
    .parameter "platforms"

    .prologue
    .line 59
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->gridViewAdapter:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->access$100(Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;)Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->hiddenPlatforms:Ljava/util/HashMap;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;->access$000(Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformListPage;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->setData([Lcn/sharesdk/framework/Platform;Ljava/util/HashMap;)V

    .line 60
    return-void
.end method
