.class public Lcom/didi/game/plugin/egret/EgretRuntimeLoader;
.super Ljava/lang/Object;
.source "EgretRuntimeLoader.java"


# static fields
.field private static final GAME_ENGINE_CLASS:Ljava/lang/String; = "org.egret.egretframeworknative.engine.EgretGameEngine"

.field private static final TAG:Ljava/lang/String; = "EgretRuntimeLoader"

.field private static instance:Lcom/didi/game/plugin/egret/EgretRuntimeLoader;


# instance fields
.field private egretGameEngineClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public flag:I

.field private loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;->instance:Lcom/didi/game/plugin/egret/EgretRuntimeLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;->flag:I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;

    .line 18
    iput-boolean v1, p0, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;->loaded:Z

    .line 19
    return-void
.end method

.method public static get()Lcom/didi/game/plugin/egret/EgretRuntimeLoader;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;->instance:Lcom/didi/game/plugin/egret/EgretRuntimeLoader;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;

    invoke-direct {v0}, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;-><init>()V

    sput-object v0, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;->instance:Lcom/didi/game/plugin/egret/EgretRuntimeLoader;

    .line 25
    :cond_0
    sget-object v0, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;->instance:Lcom/didi/game/plugin/egret/EgretRuntimeLoader;

    return-object v0
.end method


# virtual methods
.method public getEgretGameEngineClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;->loaded:Z

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 1
    .parameter "library"

    .prologue
    .line 30
    const-string v0, ".jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;->loadJar(Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method

.method public loadJar(Ljava/lang/String;)V
    .locals 6
    .parameter "pathName"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 37
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->setExecutable(Z)Z

    .line 42
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

    .line 43
    .local v0, classLoader:Ldalvik/system/DexClassLoader;
    iget-object v3, p0, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 44
    const-string v3, "org.egret.egretframeworknative.engine.EgretGameEngine"

    invoke-virtual {v0, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;->egretGameEngineClass:Ljava/lang/Class;

    .line 46
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/didi/game/plugin/egret/EgretRuntimeLoader;->loaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0           #classLoader:Ldalvik/system/DexClassLoader;
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "msg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
