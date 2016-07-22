.class public Lcom/didi/game/plugin/egret/EgretUtils;
.super Ljava/lang/Object;
.source "EgretUtils.java"


# static fields
.field private static gameEngine:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "obj"
    .parameter "name"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 56
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v2

    .line 61
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 62
    .local v1, method:Ljava/lang/reflect/Method;
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    goto :goto_0

    .line 63
    .end local v1           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNestProxyParam(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2
    .parameter "proxy"

    .prologue
    const/4 v1, 0x0

    .line 44
    const-string v0, "getParams"

    invoke-static {p0, v0, v1, v1}, Lcom/didi/game/plugin/egret/EgretUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static init(Ljava/lang/Object;)V
    .locals 0
    .parameter "engine"

    .prologue
    .line 19
    sput-object p0, Lcom/didi/game/plugin/egret/EgretUtils;->gameEngine:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public static invockNestProxyCallback(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "proxy"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Lorg/json/JSONObject;

    aput-object v2, v1, v3

    .line 49
    .local v1, paramRegisterPlugin:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 50
    .local v0, argsRegisterPlugin:[Ljava/lang/Object;
    const-string v2, "invokeCallback"

    invoke-static {p0, v2, v1, v0}, Lcom/didi/game/plugin/egret/EgretUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .parameter "name"
    .parameter "plugin"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 33
    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    .line 34
    .local v4, params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-array v0, v8, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v0, v7

    .line 35
    .local v0, args:[Ljava/lang/Object;
    sget-object v5, Lcom/didi/game/plugin/egret/EgretUtils;->gameEngine:Ljava/lang/Object;

    const-string v6, "getComponent"

    invoke-static {v5, v6, v4, v0}, Lcom/didi/game/plugin/egret/EgretUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 37
    .local v2, nest:Ljava/lang/Object;
    new-array v3, v9, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v7

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v8

    .line 38
    .local v3, paramRegisterPlugin:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-array v1, v9, [Ljava/lang/Object;

    aput-object p0, v1, v7

    aput-object p1, v1, v8

    .line 39
    .local v1, argsRegisterPlugin:[Ljava/lang/Object;
    const-string v5, "registerPlugin"

    invoke-static {v2, v5, v3, v1}, Lcom/didi/game/plugin/egret/EgretUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public static setOption(Ljava/util/HashMap;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, options:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/util/HashMap;

    aput-object v2, v1, v3

    .line 26
    .local v1, params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 27
    .local v0, args:[Ljava/lang/Object;
    const-string v2, "egret.runtime.nest"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v2, Lcom/didi/game/plugin/egret/EgretUtils;->gameEngine:Ljava/lang/Object;

    const-string v3, "game_engine_set_options"

    invoke-static {v2, v3, v1, v0}, Lcom/didi/game/plugin/egret/EgretUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method
