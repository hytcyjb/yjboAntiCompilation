.class Landroid/support/v7/app/k;
.super Landroid/support/v7/app/j;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/k$a;
    }
.end annotation


# static fields
.field private static r:Landroid/support/v7/app/s;


# instance fields
.field private s:I

.field private t:Z

.field private u:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/g;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/j;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/g;)V

    .line 35
    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/app/k;->s:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/k;->u:Z

    .line 43
    return-void
.end method

.method private c(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 104
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 123
    :goto_0
    :pswitch_1
    return v1

    .line 106
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/app/k;->t()Landroid/support/v7/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 108
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/content/Context;

    const-string v3, "uimode"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 110
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_4
    move v1, v2

    .line 117
    goto :goto_0

    .line 114
    :pswitch_5
    const/4 v1, 0x0

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 110
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private d(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Landroid/support/v7/app/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 151
    iget v1, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v1, 0x30

    .line 154
    packed-switch p1, :pswitch_data_0

    move v1, v0

    .line 163
    :goto_0
    if-eq v4, v1, :cond_0

    .line 164
    iget v0, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, -0x31

    or-int/2addr v0, v1

    iput v0, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 165
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 166
    const/4 v0, 0x1

    .line 168
    :cond_0
    return v0

    .line 156
    :pswitch_0
    const/16 v1, 0x10

    .line 157
    goto :goto_0

    .line 159
    :pswitch_1
    const/16 v1, 0x20

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private s()I
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Landroid/support/v7/app/k;->s:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/support/v7/app/k;->j()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/app/k;->c(I)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/app/k;->s:I

    goto :goto_0
.end method

.method private t()Landroid/support/v7/app/s;
    .locals 2

    .prologue
    .line 172
    sget-object v0, Landroid/support/v7/app/k;->r:Landroid/support/v7/app/s;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Landroid/support/v7/app/s;

    iget-object v1, p0, Landroid/support/v7/app/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v7/app/k;->r:Landroid/support/v7/app/s;

    .line 175
    :cond_0
    sget-object v0, Landroid/support/v7/app/k;->r:Landroid/support/v7/app/s;

    return-object v0
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .parameter

    .prologue
    .line 61
    new-instance v0, Landroid/support/v7/app/k$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/k$a;-><init>(Landroid/support/v7/app/k;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, -0x64

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/app/j;->a(Landroid/os/Bundle;)V

    .line 49
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/app/k;->s:I

    if-ne v0, v1, :cond_0

    .line 52
    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/k;->s:I

    .line 55
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Landroid/support/v7/app/k;->u:Z

    .line 67
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v7/app/j;->c(Landroid/os/Bundle;)V

    .line 131
    iget v0, p0, Landroid/support/v7/app/k;->s:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 133
    const-string v0, "appcompat:local_night_mode"

    iget v1, p0, Landroid/support/v7/app/k;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/k;->t:Z

    .line 77
    invoke-direct {p0}, Landroid/support/v7/app/k;->s()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/k;->d(I)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Landroid/support/v7/app/k;->u:Z

    return v0
.end method
