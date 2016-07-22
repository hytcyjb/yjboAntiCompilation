.class public Lorg/simple/eventbus/handler/DefaultEventHandler;
.super Ljava/lang/Object;
.source "DefaultEventHandler.java"

# interfaces
.implements Lorg/simple/eventbus/handler/EventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V
    .locals 5
    .parameter "subscription"
    .parameter "event"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v1, p1, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    :try_start_0
    iget-object v1, p1, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    iget-object v2, p1, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method
