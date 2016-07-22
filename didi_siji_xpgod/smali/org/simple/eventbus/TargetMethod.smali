.class Lorg/simple/eventbus/TargetMethod;
.super Ljava/lang/Object;
.source "TargetMethod.java"


# instance fields
.field public eventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public method:Ljava/lang/reflect/Method;

.field public threadMode:Lorg/simple/eventbus/ThreadMode;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/simple/eventbus/ThreadMode;)V
    .locals 2
    .parameter "md"
    .parameter
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/simple/eventbus/ThreadMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    .line 47
    iget-object v0, p0, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 48
    iput-object p2, p0, Lorg/simple/eventbus/TargetMethod;->eventType:Ljava/lang/Class;

    .line 49
    iput-object p3, p0, Lorg/simple/eventbus/TargetMethod;->threadMode:Lorg/simple/eventbus/ThreadMode;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 65
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 68
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 69
    check-cast v0, Lorg/simple/eventbus/TargetMethod;

    .line 70
    .local v0, other:Lorg/simple/eventbus/TargetMethod;
    iget-object v3, p0, Lorg/simple/eventbus/TargetMethod;->eventType:Ljava/lang/Class;

    if-nez v3, :cond_4

    .line 71
    iget-object v3, v0, Lorg/simple/eventbus/TargetMethod;->eventType:Ljava/lang/Class;

    if-eqz v3, :cond_5

    move v1, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget-object v3, p0, Lorg/simple/eventbus/TargetMethod;->eventType:Ljava/lang/Class;

    iget-object v4, v0, Lorg/simple/eventbus/TargetMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    iget-object v3, p0, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    if-nez v3, :cond_6

    .line 76
    iget-object v3, v0, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    move v1, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_6
    iget-object v3, p0, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 79
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 54
    const/16 v0, 0x1f

    .line 55
    .local v0, prime:I
    const/4 v1, 0x1

    .line 56
    .local v1, result:I
    iget-object v2, p0, Lorg/simple/eventbus/TargetMethod;->eventType:Ljava/lang/Class;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 57
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 58
    return v1

    .line 56
    :cond_0
    iget-object v2, p0, Lorg/simple/eventbus/TargetMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 57
    :cond_1
    iget-object v3, p0, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method
