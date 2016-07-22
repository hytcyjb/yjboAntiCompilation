.class public interface abstract Lcom/laya/ilayaplugin/IPlugin;
.super Ljava/lang/Object;
.source "IPlugin.java"


# virtual methods
.method public abstract game_plugin_configonChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract game_plugin_get_value(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract game_plugin_get_view()Landroid/view/View;
.end method

.method public abstract game_plugin_init()V
.end method

.method public abstract game_plugin_intercept_key(I)Z
.end method

.method public abstract game_plugin_invoke_method(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method public abstract game_plugin_onPause()V
.end method

.method public abstract game_plugin_onResume()V
.end method

.method public abstract game_plugin_onStop()V
.end method

.method public abstract game_plugin_set_option(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract game_plugin_set_runtime_proxy(Lcom/laya/ilayaplugin/IPluginRuntimeProxy;)V
.end method
