.class public Lcom/facebook/common/time/c;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lcom/facebook/common/time/a;


# static fields
.field private static final a:Lcom/facebook/common/time/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/facebook/common/time/c;

    invoke-direct {v0}, Lcom/facebook/common/time/c;-><init>()V

    sput-object v0, Lcom/facebook/common/time/c;->a:Lcom/facebook/common/time/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static b()Lcom/facebook/common/time/c;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/common/time/c;->a:Lcom/facebook/common/time/c;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
