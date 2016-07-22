.class final Lcom/didi/common/helper/ExitHelper$3;
.super Ljava/lang/Object;
.source "ExitHelper.java"

# interfaces
.implements Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/ExitHelper;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommit()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "--------------delay exit---------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/didi/common/helper/ExitHelper;->doExit()V

    .line 79
    return-void
.end method
