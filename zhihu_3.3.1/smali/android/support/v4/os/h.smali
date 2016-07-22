.class Landroid/support/v4/os/h;
.super Ljava/lang/Object;
.source "TraceJellybeanMR2.java"


# direct methods
.method public static a()V
    .locals 0

    .prologue
    .line 24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 21
    return-void
.end method
