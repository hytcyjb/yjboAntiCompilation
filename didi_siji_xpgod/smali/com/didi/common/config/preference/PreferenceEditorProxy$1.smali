.class Lcom/didi/common/config/preference/PreferenceEditorProxy$1;
.super Landroid/os/Handler;
.source "PreferenceEditorProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/config/preference/PreferenceEditorProxy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/config/preference/PreferenceEditorProxy;


# direct methods
.method constructor <init>(Lcom/didi/common/config/preference/PreferenceEditorProxy;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy$1;->this$0:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 53
    iget-object v2, p0, Lcom/didi/common/config/preference/PreferenceEditorProxy$1;->this$0:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    #calls: Lcom/didi/common/config/preference/PreferenceEditorProxy;->save()V
    invoke-static {v2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->access$000(Lcom/didi/common/config/preference/PreferenceEditorProxy;)V

    .line 54
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    .local v1, obj:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 59
    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    .line 57
    check-cast v0, Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;

    .line 58
    .local v0, l:Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;
    invoke-interface {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;->onCommit()V

    goto :goto_0
.end method
