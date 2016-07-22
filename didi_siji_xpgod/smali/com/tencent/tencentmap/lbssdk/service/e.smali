.class public Lcom/tencent/tencentmap/lbssdk/service/e;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/lbssdk/service/e$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    :try_start_0
    const-string v0, "tencentloc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_0
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    const-string v1, "TencentLocationSDK"

    const-string v2, "load library"

    invoke-static {v1, v2, v0}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    new-instance v0, Lcom/tencent/tencentmap/lbssdk/service/e$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/lbssdk/service/e$a;-><init>()V

    invoke-static {v0}, Lct/cm;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static native b(II[D)D
.end method

.method public static native o([B)I
.end method

.method public static native r(DII)D
.end method

.method public static native v(Ljava/lang/String;)I
.end method

.method public static native v2(Ljava/lang/String;Ljava/lang/String;)I
.end method
