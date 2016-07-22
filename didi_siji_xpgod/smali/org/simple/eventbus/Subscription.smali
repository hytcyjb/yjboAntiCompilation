.class public Lorg/simple/eventbus/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field public subscriber:Ljava/lang/Object;

.field public targetMethod:Ljava/lang/reflect/Method;

.field public threadMode:Lorg/simple/eventbus/ThreadMode;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/simple/eventbus/TargetMethod;)V
    .locals 1
    .parameter "subscriber"
    .parameter "targetMethod"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    .line 46
    iget-object v0, p2, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    .line 47
    iget-object v0, p2, Lorg/simple/eventbus/TargetMethod;->threadMode:Lorg/simple/eventbus/ThreadMode;

    iput-object v0, p0, Lorg/simple/eventbus/Subscription;->threadMode:Lorg/simple/eventbus/ThreadMode;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    if-ne p0, p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 66
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 67
    check-cast v0, Lorg/simple/eventbus/Subscription;

    .line 68
    .local v0, other:Lorg/simple/eventbus/Subscription;
    iget-object v3, p0, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 69
    iget-object v3, v0, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    if-eqz v3, :cond_5

    move v1, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget-object v3, p0, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    iget-object v4, v0, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_5
    iget-object v3, p0, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_6

    .line 74
    iget-object v3, v0, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    move v1, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_6
    iget-object v3, p0, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    iget-object v4, v0, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 77
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 52
    const/16 v0, 0x1f

    .line 53
    .local v0, prime:I
    const/4 v1, 0x1

    .line 54
    .local v1, result:I
    iget-object v2, p0, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 55
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 56
    return v1

    .line 54
    :cond_0
    iget-object v2, p0, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 55
    :cond_1
    iget-object v3, p0, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v3

    goto :goto_1
.end method
