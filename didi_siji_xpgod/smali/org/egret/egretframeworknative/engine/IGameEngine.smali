.class public interface abstract Lorg/egret/egretframeworknative/engine/IGameEngine;
.super Ljava/lang/Object;
.source "IGameEngine.java"


# static fields
.field public static final EGRET_GAME:Ljava/lang/String; = "game"

.field public static final EGRET_JSON:Ljava/lang/String; = "egret.json"

.field public static final EGRET_ROOT:Ljava/lang/String; = "egret"

.field public static final EGRET_SAVES:Ljava/lang/String; = "saves"


# virtual methods
.method public abstract game_engine_delete_cache()V
.end method

.method public abstract game_engine_destory()V
.end method

.method public abstract game_engine_get_externalInterface()Lorg/egret/egretframeworknative/engine/IGameExternalInterface;
.end method

.method public abstract game_engine_get_new_instance()Lorg/egret/egretframeworknative/engine/IGameEngine;
.end method

.method public abstract game_engine_get_view()Landroid/view/View;
.end method

.method public abstract game_engine_init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract game_engine_init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract game_engine_onPause()V
.end method

.method public abstract game_engine_onResume()V
.end method

.method public abstract game_engine_onStop()V
.end method

.method public abstract game_engine_set_engine_listener(Lorg/egret/egretframeworknative/engine/IGameEngineListener;)V
.end method

.method public abstract game_engine_set_error_listener(Lorg/egret/egretframeworknative/engine/ErrorListener;)V
.end method

.method public abstract game_engine_set_game_zip_update_listener(Lorg/egret/egretframeworknative/engine/IGameZipUpdateListener;)V
.end method

.method public abstract game_engine_set_library_loader_type(I)V
.end method

.method public abstract game_engine_set_loading_view(Landroid/view/View;)V
.end method

.method public abstract game_engine_set_options(Ljava/util/HashMap;)V
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
.end method
