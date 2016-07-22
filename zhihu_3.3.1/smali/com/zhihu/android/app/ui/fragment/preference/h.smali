.class public Lcom/zhihu/android/app/ui/fragment/preference/h;
.super Lcom/zhihu/android/app/ui/fragment/preference/c;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$b;
.implements Landroid/support/v7/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/preference/c",
        "<",
        "Lcom/zhihu/android/api/model/LabSettings;",
        ">;",
        "Landroid/support/v7/preference/Preference$b;",
        "Landroid/support/v7/preference/Preference$c;"
    }
.end annotation


# instance fields
.field private d:Landroid/support/v7/preference/Preference;

.field private e:Landroid/support/v7/preference/Preference;

.field private f:Landroid/support/v7/preference/Preference;

.field private g:Landroid/support/v7/preference/Preference;

.field private h:Landroid/support/v7/preference/Preference;

.field private i:Landroid/support/v7/preference/Preference;

.field private j:Landroid/support/v7/preference/Preference;

.field private k:Landroid/support/v7/preference/Preference;

.field private l:Landroid/support/v7/preference/Preference;

.field private m:Landroid/support/v7/preference/Preference;

.field private n:Landroid/support/v7/preference/Preference;

.field private o:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

.field private p:Landroid/support/v7/preference/PreferenceScreen;

.field private q:Lcom/zhihu/android/api/b/ae;

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/preference/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/preference/h;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->r:Z

    return v0
.end method

.method public static h()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/preference/h;

    const/4 v2, 0x0

    const-string v3, "settings"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/util/bb;->a(Z)V

    .line 87
    return-object v0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 243
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.zhihu.android"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://play.google.com/store/apps/details?id=com.zhihu.android"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->m()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zhihu/android/app/util/c;->a(Landroid/content/Context;Z)V

    .line 253
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->q:Lcom/zhihu/android/api/b/ae;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/preference/h$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/preference/h$1;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/h;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/ae;->c(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->a(Lcom/zhihu/android/bumblebee/http/e;)V

    .line 163
    return-void
.end method

.method protected a(Lcom/zhihu/android/api/model/LabSettings;)V
    .locals 2
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->o:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iget-object v1, p1, Lcom/zhihu/android/api/model/LabSettings;->topStorySettings:Lcom/zhihu/android/api/model/LabSettings$TopStorySettings;

    iget-boolean v1, v1, Lcom/zhihu/android/api/model/LabSettings$TopStorySettings;->enable:Z

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    .line 168
    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    check-cast p1, Lcom/zhihu/android/api/model/LabSettings;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/h;->b(Lcom/zhihu/android/api/model/LabSettings;)V

    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->e:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_1

    .line 210
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/preference/a;->h()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 231
    :cond_0
    :goto_0
    return v2

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->f:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_2

    .line 212
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/preference/g;->h()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->g:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_3

    .line 214
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/preference/e;->h()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->i:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_4

    .line 216
    const-string v0, ""

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/zhihu/android/app/ui/fragment/q;->a(Ljava/lang/String;I)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->p:Landroid/support/v7/preference/PreferenceScreen;

    if-ne v0, p1, :cond_5

    .line 218
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/preference/i;->a()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->j:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_6

    .line 220
    invoke-static {}, Lcom/instabug/library/Instabug;->a()Lcom/instabug/library/Instabug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/Instabug;->c()V

    goto :goto_0

    .line 221
    :cond_6
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->k:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_7

    .line 222
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->p()V

    goto :goto_0

    .line 223
    :cond_7
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->l:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_8

    .line 224
    invoke-static {}, Lcom/zhihu/android/app/ui/fragment/preference/f;->a()Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0

    .line 225
    :cond_8
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->m:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_9

    .line 226
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->q()V

    goto :goto_0

    .line 227
    :cond_9
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->n:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_0

    .line 228
    const-string v0, "http://www.zhihu.com/plainterms"

    invoke-static {v0, v2}, Lcom/zhihu/android/app/ui/fragment/WebViewFragment;->a(Ljava/lang/String;Z)Lcom/zhihu/android/app/util/bb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->a(Lcom/zhihu/android/app/util/bb;)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 196
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->h:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/MainActivity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->a(ZZ)V

    :cond_0
    :goto_0
    move v0, v1

    .line 204
    :goto_1
    return v0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->o:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    if-ne v0, p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->c:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 200
    const/4 v0, 0x0

    goto :goto_1

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zhihu/android/api/model/LabSettings;

    iget-object v0, v0, Lcom/zhihu/android/api/model/LabSettings;->topStorySettings:Lcom/zhihu/android/api/model/LabSettings$TopStorySettings;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/zhihu/android/api/model/LabSettings$TopStorySettings;->enable:Z

    goto :goto_0
.end method

.method protected b(Lcom/zhihu/android/api/model/LabSettings;)V
    .locals 3
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->q:Lcom/zhihu/android/api/b/ae;

    iget-object v1, p1, Lcom/zhihu/android/api/model/LabSettings;->topStorySettings:Lcom/zhihu/android/api/model/LabSettings$TopStorySettings;

    iget-boolean v1, v1, Lcom/zhihu/android/api/model/LabSettings$TopStorySettings;->enable:Z

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/preference/h$2;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/preference/h$2;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/h;)V

    invoke-interface {v0, v1, v2}, Lcom/zhihu/android/api/b/ae;->a(ZLcom/zhihu/android/bumblebee/b/c;)V

    .line 186
    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    check-cast p1, Lcom/zhihu/android/api/model/LabSettings;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/h;->a(Lcom/zhihu/android/api/model/LabSettings;)V

    return-void
.end method

.method protected j()V
    .locals 6

    .prologue
    .line 99
    const v0, 0x7f090240

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->d:Landroid/support/v7/preference/Preference;

    .line 100
    const v0, 0x7f090265

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->e:Landroid/support/v7/preference/Preference;

    .line 101
    const v0, 0x7f09026c

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->f:Landroid/support/v7/preference/Preference;

    .line 102
    const v0, 0x7f090269

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->g:Landroid/support/v7/preference/Preference;

    .line 103
    const v0, 0x7f090267

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->i:Landroid/support/v7/preference/Preference;

    .line 104
    const v0, 0x7f090273

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->h:Landroid/support/v7/preference/Preference;

    .line 105
    const v0, 0x7f090276

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->o:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    .line 106
    const v0, 0x7f090278

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->p:Landroid/support/v7/preference/PreferenceScreen;

    .line 108
    const v0, 0x7f090266

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->j:Landroid/support/v7/preference/Preference;

    .line 109
    const v0, 0x7f09026a

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->k:Landroid/support/v7/preference/Preference;

    .line 110
    const v0, 0x7f09026b

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->l:Landroid/support/v7/preference/Preference;

    .line 111
    const v0, 0x7f090268

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->m:Landroid/support/v7/preference/Preference;

    .line 112
    const v0, 0x7f09026d

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->n:Landroid/support/v7/preference/Preference;

    .line 114
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->e:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 116
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->g:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 117
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->i:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 118
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->o:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 119
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->o:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->r:Z

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->h:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 122
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->f:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 123
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->p:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceScreen;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 125
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->j:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 126
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->k:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 127
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->l:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 128
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->m:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 129
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->n:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 131
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->m:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09028f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "3.3.1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x136

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->b()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/preference/PreferenceBottom;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->m()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zhihu/android/app/ui/fragment/preference/PreferenceBottom;-><init>(Lcom/zhihu/android/app/ui/activity/a;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->d(Landroid/support/v7/preference/Preference;)Z

    .line 134
    return-void
.end method

.method protected k()I
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    .line 146
    if-eqz v0, :cond_0

    const v0, 0x7f070001

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f070003

    goto :goto_0
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/preference/c;->l()V

    .line 238
    const-string v0, "Settings"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/c;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->setHasOptionsMenu(Z)V

    .line 94
    const-class v0, Lcom/zhihu/android/api/b/ae;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/ae;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/h;->q:Lcom/zhihu/android/api/b/ae;

    .line 95
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/c;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 191
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 192
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/preference/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 141
    return-void
.end method
