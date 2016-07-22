.class Landroid/support/v7/preference/d$1;
.super Landroid/os/Handler;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/preference/d;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/d;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Landroid/support/v7/preference/d$1;->a:Landroid/support/v7/preference/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/preference/d$1;->a:Landroid/support/v7/preference/d;

    invoke-static {v0}, Landroid/support/v7/preference/d;->a(Landroid/support/v7/preference/d;)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
