.class public Lcom/sdu/didi/lib/DiffBiz;
.super Ljava/lang/Object;
.source "DiffBiz.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    :try_start_0
    const-string v1, "diffjni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 13
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 14
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native applyPatchToOldApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
