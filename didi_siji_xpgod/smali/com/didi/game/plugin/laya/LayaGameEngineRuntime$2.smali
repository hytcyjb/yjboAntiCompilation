.class Lcom/didi/game/plugin/laya/LayaGameEngineRuntime$2;
.super Ljava/lang/Object;
.source "LayaGameEngineRuntime.java"

# interfaces
.implements Lcom/laya/ilayaplugin/IPluginRuntimeProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;


# direct methods
.method constructor <init>(Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime$2;->this$0:Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public laya_get_url(Ljava/lang/String;)I
    .locals 1
    .parameter "url"

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public laya_get_url_notify(Ljava/lang/String;Landroid/webkit/ValueCallback;)I
    .locals 1
    .parameter "url"
    .parameter "callback"

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public laya_get_value(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, str:Ljava/lang/String;
    const-string v1, "SoPath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LibDir"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    :cond_0
    const-string v0, "/data/data/com.sdu.didi.psnger/files/laya/"

    .line 279
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 271
    .restart local v0       #str:Ljava/lang/String;
    :cond_2
    const-string v1, "CacheDirInSdcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "game_cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "laya/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_3
    const-string v1, "CacheDir"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    const-string v0, "/data/data/com.demo.laya/files/game/cache/laya/"

    goto :goto_0
.end method

.method public laya_invoke_Method(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "method"
    .parameter "param"

    .prologue
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public laya_post_url(Ljava/lang/String;ILjava/lang/String;Z)I
    .locals 1
    .parameter "url"
    .parameter "len"
    .parameter "buf"
    .parameter "isFile"

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public laya_post_url_notify(Ljava/lang/String;ILjava/lang/String;ZLandroid/webkit/ValueCallback;)I
    .locals 1
    .parameter "url"
    .parameter "len"
    .parameter "buf"
    .parameter "isFile"
    .parameter "callback"

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public laya_set_value(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public laya_stop_game_engine()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime$2;->this$0:Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;

    invoke-virtual {v0}, Lcom/didi/game/plugin/laya/LayaGameEngineRuntime;->stop()V

    .line 242
    return-void
.end method
