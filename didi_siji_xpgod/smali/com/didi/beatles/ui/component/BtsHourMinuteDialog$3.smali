.class Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$3;
.super Ljava/lang/Object;
.source "BtsHourMinuteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog$3;->this$0:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 188
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 189
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 191
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
