.class final Lcom/google/api/client/util/Sleeper$1;
.super Ljava/lang/Object;
.source "Sleeper.java"

# interfaces
.implements Lcom/google/api/client/util/Sleeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/Sleeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sleep(J)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 44
    return-void
.end method
