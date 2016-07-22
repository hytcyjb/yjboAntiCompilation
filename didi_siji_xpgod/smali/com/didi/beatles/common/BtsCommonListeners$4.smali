.class final Lcom/didi/beatles/common/BtsCommonListeners$4;
.super Ljava/lang/Object;
.source "BtsCommonListeners.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/common/BtsCommonListeners;->getShareListener(Landroid/app/Activity;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;ZZ)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$gravity:I

.field final synthetic val$isPassenger:Z

.field final synthetic val$isShare:Z

.field final synthetic val$parentView:Landroid/view/View;

.field final synthetic val$shareInfo:Lcom/didi/beatles/model/BtsShareMode;


# direct methods
.method constructor <init>(ZZLandroid/app/Activity;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/didi/beatles/common/BtsCommonListeners$4;->val$isPassenger:Z

    iput-boolean p2, p0, Lcom/didi/beatles/common/BtsCommonListeners$4;->val$isShare:Z

    iput-object p3, p0, Lcom/didi/beatles/common/BtsCommonListeners$4;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/didi/beatles/common/BtsCommonListeners$4;->val$parentView:Landroid/view/View;

    iput p5, p0, Lcom/didi/beatles/common/BtsCommonListeners$4;->val$gravity:I

    iput-object p6, p0, Lcom/didi/beatles/common/BtsCommonListeners$4;->val$shareInfo:Lcom/didi/beatles/model/BtsShareMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-boolean v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$4;->val$isPassenger:Z

    if-eqz v0, :cond_2

    .line 214
    iget-boolean v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$4;->val$isShare:Z

    if-eqz v0, :cond_1

    .line 215
    const-string v0, "pxxendtrip01_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 216
    const-string v0, "pbpwcomment02_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 230
    :goto_1
    iget-object v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/didi/beatles/common/BtsCommonListeners$4;->val$parentView:Landroid/view/View;

    iget v2, p0, Lcom/didi/beatles/common/BtsCommonListeners$4;->val$gravity:I

    iget-object v3, p0, Lcom/didi/beatles/common/BtsCommonListeners$4;->val$shareInfo:Lcom/didi/beatles/model/BtsShareMode;

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/common/utils/BtsShareUtil;->share(Landroid/content/Context;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;)V

    goto :goto_0

    .line 218
    :cond_1
    const-string v0, "pxxendtrip02_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 219
    const-string v0, "pbpwcomment03_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_2
    iget-boolean v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$4;->val$isShare:Z

    if-eqz v0, :cond_3

    .line 223
    const-string v0, "pxxendtrip01_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 224
    const-string v0, "pbdwcomment02_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_3
    const-string v0, "pxxendtrip02_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 227
    const-string v0, "pbdwcomment03_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1
.end method
