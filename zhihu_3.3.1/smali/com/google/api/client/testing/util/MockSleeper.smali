.class public Lcom/google/api/client/testing/util/MockSleeper;
.super Ljava/lang/Object;
.source "MockSleeper.java"

# interfaces
.implements Lcom/google/api/client/util/Sleeper;


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field private count:I

.field private lastMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/api/client/testing/util/MockSleeper;->count:I

    return v0
.end method

.method public final getLastMillis()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/api/client/testing/util/MockSleeper;->lastMillis:J

    return-wide v0
.end method

.method public sleep(J)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/google/api/client/testing/util/MockSleeper;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/client/testing/util/MockSleeper;->count:I

    .line 45
    iput-wide p1, p0, Lcom/google/api/client/testing/util/MockSleeper;->lastMillis:J

    .line 46
    return-void
.end method
