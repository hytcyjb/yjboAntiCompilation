.class public Lcom/zhihu/android/app/ui/fragment/preference/g;
.super Lcom/zhihu/android/app/ui/fragment/preference/c;
.source "PushSettingsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/preference/c",
        "<",
        "Lcom/zhihu/android/api/model/PushSettings;",
        ">;",
        "Landroid/support/v7/preference/Preference$b;"
    }
.end annotation


# instance fields
.field private d:Lcom/zhihu/android/api/b/ae;

.field private e:Landroid/support/v7/preference/CheckBoxPreference;

.field private f:Landroid/support/v7/preference/CheckBoxPreference;

.field private g:Landroid/support/v7/preference/CheckBoxPreference;

.field private h:Landroid/support/v7/preference/CheckBoxPreference;

.field private i:Landroid/support/v7/preference/CheckBoxPreference;

.field private j:Landroid/support/v7/preference/CheckBoxPreference;

.field private k:Landroid/support/v7/preference/CheckBoxPreference;

.field private l:Lcom/zhihu/android/app/ui/widget/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/preference/c;-><init>()V

    return-void
.end method

.method public static h()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/preference/g;

    const/4 v2, 0x0

    const-string v3, "push_settings"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->d:Lcom/zhihu/android/api/b/ae;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/preference/g$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/preference/g$1;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/g;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/ae;->a(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/g;->a(Lcom/zhihu/android/bumblebee/http/e;)V

    .line 84
    return-void
.end method

.method protected a(Lcom/zhihu/android/api/model/PushSettings;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->f:Landroid/support/v7/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/zhihu/android/api/model/PushSettings;->newAnswer:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->f(Z)V

    .line 89
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->g:Landroid/support/v7/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/zhihu/android/api/model/PushSettings;->beFollowed:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->f(Z)V

    .line 90
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->h:Landroid/support/v7/preference/CheckBoxPreference;

    iget-boolean v0, p1, Lcom/zhihu/android/api/model/PushSettings;->beThanked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/zhihu/android/api/model/PushSettings;->beVoted:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/CheckBoxPreference;->f(Z)V

    .line 91
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->j:Landroid/support/v7/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/zhihu/android/api/model/PushSettings;->beCommented:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->f(Z)V

    .line 92
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->k:Landroid/support/v7/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/zhihu/android/api/model/PushSettings;->beInvited:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->f(Z)V

    .line 93
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->i:Landroid/support/v7/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/zhihu/android/api/model/PushSettings;->newMessage:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->f(Z)V

    .line 95
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->l:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iget-boolean v1, p1, Lcom/zhihu/android/api/model/PushSettings;->notDisturb:Z

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    .line 96
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    check-cast p1, Lcom/zhihu/android/api/model/PushSettings;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/g;->b(Lcom/zhihu/android/api/model/PushSettings;)V

    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 139
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 140
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->e:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_3

    .line 145
    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/g;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/push/a;->b(Landroid/content/Context;)V

    .line 166
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/g;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/push/a;->c(Landroid/content/Context;)V

    goto :goto_1

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->f:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_4

    .line 151
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zhihu/android/api/model/PushSettings;

    iput-boolean v1, v0, Lcom/zhihu/android/api/model/PushSettings;->newAnswer:Z

    goto :goto_1

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->i:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_5

    .line 153
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zhihu/android/api/model/PushSettings;

    iput-boolean v1, v0, Lcom/zhihu/android/api/model/PushSettings;->newMessage:Z

    goto :goto_1

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->g:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_6

    .line 155
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zhihu/android/api/model/PushSettings;

    iput-boolean v1, v0, Lcom/zhihu/android/api/model/PushSettings;->beFollowed:Z

    goto :goto_1

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->h:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_7

    .line 157
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zhihu/android/api/model/PushSettings;

    iput-boolean v1, v0, Lcom/zhihu/android/api/model/PushSettings;->beVoted:Z

    .line 158
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zhihu/android/api/model/PushSettings;

    iput-boolean v1, v0, Lcom/zhihu/android/api/model/PushSettings;->beThanked:Z

    goto :goto_1

    .line 159
    :cond_7
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->j:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_8

    .line 160
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zhihu/android/api/model/PushSettings;

    iput-boolean v1, v0, Lcom/zhihu/android/api/model/PushSettings;->beCommented:Z

    goto :goto_1

    .line 161
    :cond_8
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->k:Landroid/support/v7/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_9

    .line 162
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zhihu/android/api/model/PushSettings;

    iput-boolean v1, v0, Lcom/zhihu/android/api/model/PushSettings;->beInvited:Z

    goto :goto_1

    .line 163
    :cond_9
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->l:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    if-ne v0, p1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zhihu/android/api/model/PushSettings;

    iput-boolean v1, v0, Lcom/zhihu/android/api/model/PushSettings;->notDisturb:Z

    goto :goto_1
.end method

.method protected b(Lcom/zhihu/android/api/model/PushSettings;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->d:Lcom/zhihu/android/api/b/ae;

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zhihu/android/api/model/PushSettings;

    new-instance v2, Lcom/zhihu/android/app/util/n;

    invoke-direct {v2}, Lcom/zhihu/android/app/util/n;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/zhihu/android/api/b/ae;->a(Lcom/zhihu/android/api/model/PushSettings;Lcom/zhihu/android/bumblebee/b/c;)V

    .line 101
    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    check-cast p1, Lcom/zhihu/android/api/model/PushSettings;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/g;->a(Lcom/zhihu/android/api/model/PushSettings;)V

    return-void
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 134
    const v0, 0x7f0902c0

    return v0
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f09025c

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/g;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->e:Landroid/support/v7/preference/CheckBoxPreference;

    .line 106
    const v0, 0x7f090260

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/g;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->f:Landroid/support/v7/preference/CheckBoxPreference;

    .line 107
    const v0, 0x7f090263

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/g;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->i:Landroid/support/v7/preference/CheckBoxPreference;

    .line 108
    const v0, 0x7f090262

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/g;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->g:Landroid/support/v7/preference/CheckBoxPreference;

    .line 109
    const v0, 0x7f09025b

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/g;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->h:Landroid/support/v7/preference/CheckBoxPreference;

    .line 110
    const v0, 0x7f090261

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/g;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->j:Landroid/support/v7/preference/CheckBoxPreference;

    .line 111
    const v0, 0x7f09025e

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/g;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->k:Landroid/support/v7/preference/CheckBoxPreference;

    .line 112
    const v0, 0x7f09025d

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/g;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->l:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    .line 114
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->e:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/CheckBoxPreference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 116
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->f:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/CheckBoxPreference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 117
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->i:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/CheckBoxPreference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 118
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->g:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/CheckBoxPreference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 119
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->h:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/CheckBoxPreference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 120
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->j:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/CheckBoxPreference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 121
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->k:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/CheckBoxPreference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 122
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->l:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 124
    :cond_0
    return-void
.end method

.method protected k()I
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    .line 129
    if-eqz v0, :cond_0

    const v0, 0x7f070006

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f070007

    goto :goto_0
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/preference/c;->l()V

    .line 173
    const-string v0, "PushSetting"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/c;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-class v0, Lcom/zhihu/android/api/b/ae;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/ae;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/g;->d:Lcom/zhihu/android/api/b/ae;

    .line 67
    return-void
.end method
