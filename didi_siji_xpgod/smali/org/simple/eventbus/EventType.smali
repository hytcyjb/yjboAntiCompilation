.class public final Lorg/simple/eventbus/EventType;
.super Ljava/lang/Object;
.source "EventType.java"


# static fields
.field public static final DEFAULT_TAG:Ljava/lang/String; = "default_tag"


# instance fields
.field paramClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, aClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, "default_tag"

    invoke-direct {p0, p1, v0}, Lorg/simple/eventbus/EventType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "aTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, aClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "default_tag"

    iput-object v0, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    .line 50
    iput-object p2, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    if-ne p0, p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 74
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 75
    check-cast v0, Lorg/simple/eventbus/EventType;

    .line 76
    .local v0, other:Lorg/simple/eventbus/EventType;
    iget-object v3, p0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    if-nez v3, :cond_4

    .line 77
    iget-object v3, v0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    if-eqz v3, :cond_5

    move v1, v2

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iget-object v3, p0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    iget-object v4, v0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_5
    iget-object v3, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 82
    iget-object v3, v0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_6
    iget-object v3, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    iget-object v4, v0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 85
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 60
    const/16 v0, 0x1f

    .line 61
    .local v0, prime:I
    const/4 v1, 0x1

    .line 62
    .local v1, result:I
    iget-object v2, p0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 63
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 64
    return v1

    .line 62
    :cond_0
    iget-object v2, p0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 63
    :cond_1
    iget-object v3, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventType [paramClass="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
