.class public abstract Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
.super Ljava/lang/Object;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Honeycomb;,
        Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Support;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final config:Lde/greenrobot/event/util/ErrorDialogConfig;


# direct methods
.method protected constructor <init>(Lde/greenrobot/event/util/ErrorDialogConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 15
    .local p0, this:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;,"Lde/greenrobot/event/util/ErrorDialogFragmentFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    .line 17
    return-void
.end method


# virtual methods
.method protected abstract createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/util/ThrowableFailureEvent;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method protected getMessageFor(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .parameter "event"
    .parameter "arguments"

    .prologue
    .line 66
    .local p0, this:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;,"Lde/greenrobot/event/util/ErrorDialogFragmentFactory<TT;>;"
    iget-object v1, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget-object v2, p1, Lde/greenrobot/event/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lde/greenrobot/event/util/ErrorDialogConfig;->getMessageIdForThrowable(Ljava/lang/Throwable;)I

    move-result v0

    .line 67
    .local v0, msgResId:I
    iget-object v1, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget-object v1, v1, Lde/greenrobot/event/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getTitleFor(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .parameter "event"
    .parameter "arguments"

    .prologue
    .line 61
    .local p0, this:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;,"Lde/greenrobot/event/util/ErrorDialogFragmentFactory<TT;>;"
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget-object v0, v0, Lde/greenrobot/event/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;

    iget-object v1, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget v1, v1, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultTitleId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prepareErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;
    .locals 5
    .parameter "event"
    .parameter "finishAfterDialog"
    .parameter "argumentsForErrorDialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/util/ThrowableFailureEvent;",
            "Z",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;,"Lde/greenrobot/event/util/ErrorDialogFragmentFactory<TT;>;"
    invoke-virtual {p1}, Lde/greenrobot/event/util/ThrowableFailureEvent;->isSuppressErrorUi()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    const/4 v3, 0x0

    .line 53
    :goto_0
    return-object v3

    .line 29
    :cond_0
    if-eqz p3, :cond_6

    .line 30
    invoke-virtual {p3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 35
    .local v0, bundle:Landroid/os/Bundle;
    :goto_1
    const-string v3, "de.greenrobot.eventbus.errordialog.title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 36
    invoke-virtual {p0, p1, v0}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->getTitleFor(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, title:Ljava/lang/String;
    const-string v3, "de.greenrobot.eventbus.errordialog.title"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .end local v2           #title:Ljava/lang/String;
    :cond_1
    const-string v3, "de.greenrobot.eventbus.errordialog.message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 40
    invoke-virtual {p0, p1, v0}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->getMessageFor(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, message:Ljava/lang/String;
    const-string v3, "de.greenrobot.eventbus.errordialog.message"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .end local v1           #message:Ljava/lang/String;
    :cond_2
    const-string v3, "de.greenrobot.eventbus.errordialog.finish_after_dialog"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 44
    const-string v3, "de.greenrobot.eventbus.errordialog.finish_after_dialog"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    :cond_3
    const-string v3, "de.greenrobot.eventbus.errordialog.event_type_on_close"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget-object v3, v3, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultEventTypeOnDialogClosed:Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 48
    const-string v3, "de.greenrobot.eventbus.errordialog.event_type_on_close"

    iget-object v4, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget-object v4, v4, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultEventTypeOnDialogClosed:Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 50
    :cond_4
    const-string v3, "de.greenrobot.eventbus.errordialog.icon_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget v3, v3, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultDialogIconId:I

    if-eqz v3, :cond_5

    .line 51
    const-string v3, "de.greenrobot.eventbus.errordialog.icon_id"

    iget-object v4, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget v4, v4, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultDialogIconId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    :cond_5
    invoke-virtual {p0, p1, v0}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 32
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #bundle:Landroid/os/Bundle;
    goto :goto_1
.end method
