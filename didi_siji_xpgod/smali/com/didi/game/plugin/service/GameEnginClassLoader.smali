.class public Lcom/didi/game/plugin/service/GameEnginClassLoader;
.super Ljava/lang/Object;
.source "GameEnginClassLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameEnginClassLoader"

.field private static enginClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static instance:Lcom/didi/game/plugin/service/GameEnginClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/game/plugin/service/GameEnginClassLoader;->instance:Lcom/didi/game/plugin/service/GameEnginClassLoader;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/game/plugin/service/GameEnginClassLoader;->enginClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/didi/game/plugin/service/GameEnginClassLoader;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/didi/game/plugin/service/GameEnginClassLoader;->instance:Lcom/didi/game/plugin/service/GameEnginClassLoader;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/didi/game/plugin/service/GameEnginClassLoader;

    invoke-direct {v0}, Lcom/didi/game/plugin/service/GameEnginClassLoader;-><init>()V

    sput-object v0, Lcom/didi/game/plugin/service/GameEnginClassLoader;->instance:Lcom/didi/game/plugin/service/GameEnginClassLoader;

    .line 29
    :cond_0
    sget-object v0, Lcom/didi/game/plugin/service/GameEnginClassLoader;->instance:Lcom/didi/game/plugin/service/GameEnginClassLoader;

    return-object v0
.end method


# virtual methods
.method public getClassByPlugin(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "pluginName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/didi/game/plugin/service/GameEnginClassLoader;->enginClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/didi/game/plugin/service/GameEnginClassLoader;->enginClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .parameter "filePath"
    .parameter "pluginName"
    .parameter "className"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v3, Lcom/didi/game/plugin/service/GameEnginClassLoader;->enginClasses:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    sget-object v3, Lcom/didi/game/plugin/service/GameEnginClassLoader;->enginClasses:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 53
    :goto_0
    return-object v3

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    .local v1, enginClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, f:Ljava/io/File;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/File;->setExecutable(Z)Z

    .line 46
    :try_start_0
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, p1, v3, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 47
    .local v0, classLoader:Ldalvik/system/DexClassLoader;
    invoke-virtual {v0, p3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 48
    sget-object v3, Lcom/didi/game/plugin/service/GameEnginClassLoader;->enginClasses:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #classLoader:Ldalvik/system/DexClassLoader;
    :goto_1
    move-object v3, v1

    .line 53
    goto :goto_0

    .line 50
    :catch_0
    move-exception v3

    goto :goto_1
.end method
