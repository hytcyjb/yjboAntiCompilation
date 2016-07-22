.class Lcom/didi/common/ui/fragment/CommonAboutFragment$4;
.super Ljava/lang/Object;
.source "CommonAboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private count:I

.field private lastTime:J

.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonAboutFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonAboutFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonAboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->lastTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 131
    iget v4, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->count:I

    if-nez v4, :cond_0

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->lastTime:J

    .line 133
    iget v4, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->count:I

    .line 160
    :goto_0
    return-void

    .line 134
    :cond_0
    iget v4, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->count:I

    const/16 v5, 0x9

    if-ge v4, v5, :cond_2

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    .local v0, currentTime:J
    iget-wide v4, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->lastTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 137
    iput-wide v0, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->lastTime:J

    .line 138
    iget v4, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->count:I

    goto :goto_0

    .line 140
    :cond_1
    const/4 v4, 0x1

    iput v4, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->count:I

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->lastTime:J

    goto :goto_0

    .line 144
    .end local v0           #currentTime:J
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->count:I

    .line 145
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/didi/common/ui/fragment/CommonAboutFragment$4;->lastTime:J

    .line 146
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 148
    const-string v4, "\u9700\u8981\u5148\u5b89\u88c5\u6ef4\u6ef4\u4fee\u6539\u5668\u624d\u80fd\u5f00\u542f\u6b64\u6a21\u5f0f"

    invoke-static {v4}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_3
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getChangeIPFlag()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, flag:Ljava/lang/String;
    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->putChangeIPFlag(Ljava/lang/String;)V

    .line 153
    const-string v4, "\u5f00\u542f\u4fee\u6539\u5668\u6a21\u5f0f"

    invoke-static {v4}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_4
    const-string v4, "\u5173\u95ed\u4fee\u6539\u5668\u6a21\u5f0f"

    invoke-static {v4}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v4

    const-string v5, "false"

    invoke-virtual {v4, v5}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->putChangeIPFlag(Ljava/lang/String;)V

    goto :goto_0
.end method
