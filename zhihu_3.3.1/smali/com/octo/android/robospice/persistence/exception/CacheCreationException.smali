.class public Lcom/octo/android/robospice/persistence/exception/CacheCreationException;
.super Lcom/octo/android/robospice/persistence/exception/SpiceException;
.source "CacheCreationException.java"


# static fields
.field private static final serialVersionUID:J = 0x4028f5d8b800e7c4L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/octo/android/robospice/persistence/exception/SpiceException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/octo/android/robospice/persistence/exception/SpiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/octo/android/robospice/persistence/exception/SpiceException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method
