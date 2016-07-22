.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;
.super Ljava/lang/Thread;
.source "EditPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->onCreate()V
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
    .line 118
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 120
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getPlatformList()[Lcn/sharesdk/framework/Platform;

    move-result-object v8

    #setter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v7, v8}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$002(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;[Lcn/sharesdk/framework/Platform;)[Lcn/sharesdk/framework/Platform;

    .line 121
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v7}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v7

    if-nez v7, :cond_0

    .line 145
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v7}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .local v0, arr$:[Lcn/sharesdk/framework/Platform;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v6, v0, v2

    .line 127
    .local v6, plat:Lcn/sharesdk/framework/Platform;
    invoke-virtual {v6}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, name:Ljava/lang/String;
    instance-of v7, v6, Lcn/sharesdk/framework/CustomPlatform;

    if-nez v7, :cond_1

    invoke-static {v5}, Lcn/sharesdk/onekeyshare/ShareCore;->isUseClientToShare(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 126
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #plat:Lcn/sharesdk/framework/Platform;
    :cond_3
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcn/sharesdk/framework/Platform;

    #setter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v7, v8}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$002(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;[Lcn/sharesdk/framework/Platform;)[Lcn/sharesdk/framework/Platform;

    .line 135
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v7}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v7

    array-length v7, v7

    if-ge v1, v7, :cond_4

    .line 136
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v7}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v8

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/sharesdk/framework/Platform;

    aput-object v7, v8, v1

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 139
    :cond_4
    const/4 v7, 0x1

    new-instance v8, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1$1;

    invoke-direct {v8, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1$1;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;)V

    invoke-static {v7, v8}, Lcn/sharesdk/framework/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0
.end method
