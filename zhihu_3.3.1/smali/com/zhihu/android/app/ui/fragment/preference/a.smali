.class public Lcom/zhihu/android/app/ui/fragment/preference/a;
.super Lcom/zhihu/android/app/ui/fragment/preference/c;
.source "AccountAndPasswordSettingsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$b;
.implements Landroid/support/v7/preference/Preference$c;
.implements Lcom/zhihu/android/app/ui/dialog/UnlockSettingDialog$a;
.implements Lcom/zhihu/android/app/ui/dialog/m$a;
.implements Lcom/zhihu/android/app/ui/dialog/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/preference/a$b;,
        Lcom/zhihu/android/app/ui/fragment/preference/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/app/ui/fragment/preference/c",
        "<",
        "Lcom/zhihu/android/api/model/AccountDetail;",
        ">;",
        "Landroid/support/v7/preference/Preference$b;",
        "Landroid/support/v7/preference/Preference$c;",
        "Lcom/zhihu/android/app/ui/dialog/UnlockSettingDialog$a;",
        "Lcom/zhihu/android/app/ui/dialog/m$a;",
        "Lcom/zhihu/android/app/ui/dialog/n$a;"
    }
.end annotation


# instance fields
.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:Lcom/zhihu/android/api/b/a;

.field private n:Lcom/zhihu/android/api/b/ag;

.field private o:Lcom/zhihu/android/api/b/ae;

.field private p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

.field private q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

.field private r:Landroid/support/v7/preference/Preference;

.field private s:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

.field private t:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

.field private u:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

.field private v:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/preference/c;-><init>()V

    .line 73
    const/16 v0, 0x10

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->d:I

    .line 75
    const/16 v0, 0x20

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->e:I

    .line 77
    const/16 v0, 0x30

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->f:I

    .line 79
    const/16 v0, 0x40

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->g:I

    .line 81
    const/16 v0, 0x50

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->h:I

    .line 83
    const/16 v0, 0x60

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->i:I

    .line 85
    const/16 v0, 0x70

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->j:I

    .line 87
    const/16 v0, 0x80

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->k:I

    .line 89
    const/16 v0, 0x90

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->l:I

    .line 117
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->w:Z

    .line 119
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->x:Z

    .line 121
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->y:Z

    .line 123
    iput-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->z:Z

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/fragment/preference/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/a;->e(I)V

    return-void
.end method

.method private d(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 498
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    :goto_0
    return-void

    .line 502
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 504
    :sswitch_0
    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->y:Z

    if-eqz v1, :cond_1

    .line 506
    const/4 v1, 0x4

    invoke-static {v1, v0, p0}, Lcom/zhihu/android/app/ui/dialog/m;->a(ILjava/lang/String;Lcom/zhihu/android/app/ui/dialog/m$a;)Lcom/zhihu/android/app/ui/dialog/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_revise_account"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/m;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_1
    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->z:Z

    if-eqz v1, :cond_2

    .line 509
    invoke-static {v4, v0, p0}, Lcom/zhihu/android/app/ui/dialog/m;->a(ILjava/lang/String;Lcom/zhihu/android/app/ui/dialog/m$a;)Lcom/zhihu/android/app/ui/dialog/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_revise_account"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/m;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_2
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v1

    .line 513
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/a;->e()Lcom/zhihu/android/api/model/People;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/android/api/model/People;->email:Ljava/lang/String;

    :cond_3
    invoke-static {v3, v0, p0}, Lcom/zhihu/android/app/ui/dialog/m;->a(ILjava/lang/String;Lcom/zhihu/android/app/ui/dialog/m$a;)Lcom/zhihu/android/app/ui/dialog/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_revise_account"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/m;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :sswitch_1
    iget-boolean v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->x:Z

    if-eqz v1, :cond_4

    .line 519
    const/4 v1, 0x5

    invoke-static {v1, v0, p0}, Lcom/zhihu/android/app/ui/dialog/m;->a(ILjava/lang/String;Lcom/zhihu/android/app/ui/dialog/m$a;)Lcom/zhihu/android/app/ui/dialog/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_revise_account"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/m;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_4
    invoke-static {v5, v0, p0}, Lcom/zhihu/android/app/ui/dialog/m;->a(ILjava/lang/String;Lcom/zhihu/android/app/ui/dialog/m$a;)Lcom/zhihu/android/app/ui/dialog/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_revise_account"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/m;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :sswitch_2
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->w:Z

    if-eqz v0, :cond_5

    .line 528
    invoke-static {v4, p0}, Lcom/zhihu/android/app/ui/dialog/n;->a(ILcom/zhihu/android/app/ui/dialog/n$a;)Lcom/zhihu/android/app/ui/dialog/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_set_password"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/n;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_5
    invoke-static {v3, p0}, Lcom/zhihu/android/app/ui/dialog/n;->a(ILcom/zhihu/android/app/ui/dialog/n$a;)Lcom/zhihu/android/app/ui/dialog/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_set_password"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/n;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 535
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const-class v2, Lcom/zhihu/android/app/ui/activity/QQConnOauthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    const-string v1, "extra_is_bind"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 537
    const-string v1, "extra_request_code"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 541
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const-class v2, Lcom/zhihu/android/app/ui/activity/WeChatOauthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 542
    const-string v1, "extra_is_bind"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 543
    const-string v1, "extra_request_code"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 547
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    const-class v2, Lcom/zhihu/android/app/ui/activity/SinaOauthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 548
    const-string v1, "extra_is_bind"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 549
    const-string v1, "extra_request_code"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 553
    :sswitch_6
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 554
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->m:Lcom/zhihu/android/api/b/a;

    invoke-static {}, Lcom/zhihu/android/app/util/av;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zhihu/android/api/util/GrantType;->QQCONN:Lcom/zhihu/android/api/util/GrantType;

    invoke-virtual {v2}, Lcom/zhihu/android/api/util/GrantType;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/preference/a$b;

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->u:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-direct {v3, p0, v4}, Lcom/zhihu/android/app/ui/fragment/preference/a$b;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/a;Landroid/support/v7/preference/TwoStatePreference;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/zhihu/android/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V

    goto/16 :goto_0

    .line 557
    :sswitch_7
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 558
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->m:Lcom/zhihu/android/api/b/a;

    invoke-static {}, Lcom/zhihu/android/app/util/av;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zhihu/android/api/util/GrantType;->WECHAT:Lcom/zhihu/android/api/util/GrantType;

    invoke-virtual {v2}, Lcom/zhihu/android/api/util/GrantType;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/preference/a$b;

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->t:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-direct {v3, p0, v4}, Lcom/zhihu/android/app/ui/fragment/preference/a$b;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/a;Landroid/support/v7/preference/TwoStatePreference;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/zhihu/android/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V

    goto/16 :goto_0

    .line 561
    :sswitch_8
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 562
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->m:Lcom/zhihu/android/api/b/a;

    invoke-static {}, Lcom/zhihu/android/app/util/av;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zhihu/android/api/util/GrantType;->SINA:Lcom/zhihu/android/api/util/GrantType;

    invoke-virtual {v2}, Lcom/zhihu/android/api/util/GrantType;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zhihu/android/app/ui/fragment/preference/a$b;

    iget-object v4, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->s:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-direct {v3, p0, v4}, Lcom/zhihu/android/app/ui/fragment/preference/a$b;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/a;Landroid/support/v7/preference/TwoStatePreference;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/zhihu/android/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V

    goto/16 :goto_0

    .line 502
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_2
        0x40 -> :sswitch_3
        0x50 -> :sswitch_4
        0x60 -> :sswitch_5
        0x70 -> :sswitch_6
        0x80 -> :sswitch_7
        0x90 -> :sswitch_8
    .end sparse-switch
.end method

.method private e(I)V
    .locals 3
    .parameter

    .prologue
    .line 568
    invoke-static {}, Lcom/zhihu/android/app/util/av;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/a;->d(I)V

    .line 590
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-static {}, Lcom/zhihu/android/app/util/av;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 571
    invoke-static {}, Lcom/zhihu/android/app/util/av;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/zhihu/android/app/ui/dialog/UnlockSettingDialog;->a(Ljava/util/ArrayList;ILcom/zhihu/android/app/ui/dialog/UnlockSettingDialog$a;)Lcom/zhihu/android/app/ui/dialog/UnlockSettingDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "dialog_unlock_setting"

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/ui/dialog/UnlockSettingDialog;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->m:Lcom/zhihu/android/api/b/a;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/preference/a$6;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/a$6;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/a;I)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/a;->a(Lcom/zhihu/android/bumblebee/b/c;)V

    goto :goto_0
.end method

.method public static h()Lcom/zhihu/android/app/util/bb;
    .locals 4

    .prologue
    .line 126
    new-instance v0, Lcom/zhihu/android/app/util/bb;

    const-class v1, Lcom/zhihu/android/app/ui/fragment/preference/a;

    const/4 v2, 0x0

    const-string v3, "account_and_password_settings"

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/android/app/util/bb;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->m:Lcom/zhihu/android/api/b/a;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/preference/a$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/preference/a$1;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/a;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/a;->d(Lcom/zhihu/android/bumblebee/b/c;)V

    .line 183
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->n:Lcom/zhihu/android/api/b/ag;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/preference/a$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/preference/a$2;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/a;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/ag;->a(Lcom/zhihu/android/bumblebee/b/c;)V

    .line 198
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->m:Lcom/zhihu/android/api/b/a;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/preference/a$3;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/preference/a$3;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/a;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/a;->a(Lcom/zhihu/android/bumblebee/b/c;)V

    .line 213
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->o:Lcom/zhihu/android/api/b/ae;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/preference/a$4;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/preference/a$4;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/a;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/ae;->d(Lcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 229
    return-void
.end method

.method protected a(Lcom/zhihu/android/api/model/AccountDetail;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f090291

    const v3, 0x7f09028a

    const v4, 0x7f090288

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 257
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->phoneNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->e(I)V

    .line 263
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    iget-object v3, p1, Lcom/zhihu/android/api/model/AccountDetail;->phoneNo:Ljava/lang/String;

    invoke-static {v3}, Lcom/zhihu/android/app/util/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->f(Z)V

    .line 265
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->f(Z)V

    .line 266
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Z)V

    .line 267
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Z)V

    .line 302
    :goto_1
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->r:Landroid/support/v7/preference/Preference;

    iget-boolean v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->passwordSet:Z

    if-eqz v0, :cond_6

    const v0, 0x7f090292

    :goto_2
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->d(I)V

    .line 303
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->r:Landroid/support/v7/preference/Preference;

    iget-boolean v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->passwordSet:Z

    if-eqz v0, :cond_7

    const v0, 0x7f09027e

    :goto_3
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->e(I)V

    .line 304
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->r:Landroid/support/v7/preference/Preference;

    iget-boolean v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->passwordSet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->actived:Z

    if-eqz v0, :cond_9

    :cond_1
    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->a(Z)V

    .line 306
    iget-boolean v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->actived:Z

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->z:Z

    .line 308
    iget-boolean v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->passwordSet:Z

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->w:Z

    .line 310
    iget-object v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->y:Z

    .line 312
    iget-object v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->phoneNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->x:Z

    .line 314
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->s:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->a(Z)V

    .line 315
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->t:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->a(Z)V

    .line 316
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->u:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->a(Z)V

    goto/16 :goto_0

    .line 268
    :cond_2
    iget-object v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->phoneNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 269
    iget-boolean v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->actived:Z

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {p0, v5}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->b(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    iget-object v3, p1, Lcom/zhihu/android/api/model/AccountDetail;->email:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {p0, v4}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->f(Z)V

    .line 274
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->f(Z)V

    .line 275
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Z)V

    .line 276
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Z)V

    goto/16 :goto_1

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {p0, v5}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->b(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    iget-object v3, p1, Lcom/zhihu/android/api/model/AccountDetail;->email:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    const v3, 0x7f090289

    invoke-virtual {p0, v3}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->f(Z)V

    .line 282
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->f(Z)V

    .line 283
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Z)V

    .line 284
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Z)V

    goto/16 :goto_1

    .line 286
    :cond_4
    iget-object v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->phoneNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 287
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    iget-object v3, p1, Lcom/zhihu/android/api/model/AccountDetail;->email:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    iget-object v3, p1, Lcom/zhihu/android/api/model/AccountDetail;->phoneNo:Ljava/lang/String;

    invoke-static {v3}, Lcom/zhihu/android/app/util/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->f(Z)V

    .line 290
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->f(Z)V

    .line 291
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Z)V

    .line 292
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Z)V

    goto/16 :goto_1

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {p0, v3}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {p0, v4}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->f(Z)V

    .line 297
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->f(Z)V

    .line 298
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Z)V

    .line 299
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Z)V

    goto/16 :goto_1

    .line 302
    :cond_6
    const v0, 0x7f0902c1

    goto/16 :goto_2

    .line 303
    :cond_7
    iget-boolean v0, p1, Lcom/zhihu/android/api/model/AccountDetail;->actived:Z

    if-nez v0, :cond_8

    const v0, 0x7f090281

    goto/16 :goto_3

    :cond_8
    const v0, 0x7f090285

    goto/16 :goto_3

    :cond_9
    move v0, v1

    .line 304
    goto/16 :goto_4
.end method

.method public a(Lcom/zhihu/android/api/model/SocialSetting;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f09028b

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 464
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->s:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iget-object v0, p1, Lcom/zhihu/android/api/model/SocialSetting;->sinaSetting:Lcom/zhihu/android/api/model/SinaSocialInfo;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    .line 465
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->s:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iget-object v0, p1, Lcom/zhihu/android/api/model/SocialSetting;->sinaSetting:Lcom/zhihu/android/api/model/SinaSocialInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/zhihu/android/api/model/SocialSetting;->sinaSetting:Lcom/zhihu/android/api/model/SinaSocialInfo;

    iget-object v0, v0, Lcom/zhihu/android/api/model/SinaSocialInfo;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v0}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->a(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->u:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iget-object v0, p1, Lcom/zhihu/android/api/model/SocialSetting;->qqSetting:Lcom/zhihu/android/api/model/SocialInfo;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    .line 467
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->u:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iget-object v0, p1, Lcom/zhihu/android/api/model/SocialSetting;->qqSetting:Lcom/zhihu/android/api/model/SocialInfo;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/zhihu/android/api/model/SocialSetting;->qqSetting:Lcom/zhihu/android/api/model/SocialInfo;

    iget-object v0, v0, Lcom/zhihu/android/api/model/SocialInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v0}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->a(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->t:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iget-object v3, p1, Lcom/zhihu/android/api/model/SocialSetting;->wechatSetting:Lcom/zhihu/android/api/model/SocialInfo;

    if-eqz v3, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    .line 469
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->t:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iget-object v0, p1, Lcom/zhihu/android/api/model/SocialSetting;->wechatSetting:Lcom/zhihu/android/api/model/SocialInfo;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/zhihu/android/api/model/SocialSetting;->wechatSetting:Lcom/zhihu/android/api/model/SocialInfo;

    iget-object v0, v0, Lcom/zhihu/android/api/model/SocialInfo;->name:Ljava/lang/String;

    :goto_5
    invoke-virtual {v1, v0}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->a(Ljava/lang/CharSequence;)V

    .line 470
    return-void

    :cond_0
    move v0, v2

    .line 464
    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {p0, v4}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 466
    goto :goto_2

    .line 467
    :cond_3
    invoke-virtual {p0, v4}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move v1, v2

    .line 468
    goto :goto_4

    .line 469
    :cond_5
    invoke-virtual {p0, v4}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    check-cast p1, Lcom/zhihu/android/api/model/AccountDetail;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/a;->b(Lcom/zhihu/android/api/model/AccountDetail;)V

    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->v:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    .line 474
    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .parameter

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->y()Ljava/lang/String;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->e(I)V

    .line 341
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->e(I)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->r:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->e(I)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->y()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 348
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->s:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    if-eqz v1, :cond_1

    .line 350
    const/16 v0, 0x60

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->e(I)V

    .line 370
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 352
    :cond_1
    const/16 v0, 0x90

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->e(I)V

    goto :goto_0

    .line 354
    :cond_2
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->u:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 355
    if-eqz v1, :cond_3

    .line 356
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->e(I)V

    goto :goto_0

    .line 358
    :cond_3
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->e(I)V

    goto :goto_0

    .line 360
    :cond_4
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->t:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 361
    if-eqz v1, :cond_5

    .line 362
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->e(I)V

    goto :goto_0

    .line 364
    :cond_5
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->e(I)V

    goto :goto_0

    .line 366
    :cond_6
    iget-object v2, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->v:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/preference/a;->b(Z)V

    goto :goto_0
.end method

.method protected b(Lcom/zhihu/android/api/model/AccountDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    check-cast p1, Lcom/zhihu/android/api/model/AccountDetail;

    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/a;->a(Lcom/zhihu/android/api/model/AccountDetail;)V

    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 477
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->o:Lcom/zhihu/android/api/b/ae;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/preference/a$5;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/a$5;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/a;Z)V

    invoke-interface {v0, p1, v1}, Lcom/zhihu/android/api/b/ae;->b(ZLcom/zhihu/android/bumblebee/b/c;)Lcom/zhihu/android/bumblebee/http/e;

    .line 495
    return-void
.end method

.method public b_(I)V
    .locals 0
    .parameter

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/a;->e(I)V

    .line 427
    return-void
.end method

.method public c_(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 431
    sparse-switch p1, :sswitch_data_0

    .line 451
    :goto_0
    return-void

    .line 433
    :sswitch_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->u:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    goto :goto_0

    .line 436
    :sswitch_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->t:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    goto :goto_0

    .line 439
    :sswitch_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->s:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    goto :goto_0

    .line 442
    :sswitch_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->u:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    goto :goto_0

    .line 445
    :sswitch_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->t:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    goto :goto_0

    .line 448
    :sswitch_5
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->s:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    goto :goto_0

    .line 431
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x50 -> :sswitch_1
        0x60 -> :sswitch_2
        0x70 -> :sswitch_3
        0x80 -> :sswitch_4
        0x90 -> :sswitch_5
    .end sparse-switch
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 152
    const v0, 0x7f090290

    return v0
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 233
    const v0, 0x7f090237

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    .line 234
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->p:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 236
    const v0, 0x7f090238

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    .line 237
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->q:Lcom/zhihu/android/app/ui/widget/VerificationPreference;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/VerificationPreference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 239
    const v0, 0x7f090239

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->r:Landroid/support/v7/preference/Preference;

    .line 240
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->r:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 242
    const v0, 0x7f09023e

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->s:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    .line 243
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->s:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 245
    const v0, 0x7f09023f

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->t:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    .line 246
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->t:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 248
    const v0, 0x7f09023d

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->u:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    .line 249
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->u:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 251
    const v0, 0x7f09026f

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->c(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->v:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    .line 252
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->v:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->a(Landroid/support/v7/preference/Preference$b;)V

    .line 253
    return-void
.end method

.method protected k()I
    .locals 1

    .prologue
    .line 326
    const v0, 0x7f070002

    return v0
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 663
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/preference/c;->l()V

    .line 665
    const-string v0, "AccountSetting"

    invoke-static {v0}, Lcom/zhihu/android/app/b/a;->a(Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public n_()V
    .locals 0

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->o()V

    .line 456
    return-void
.end method

.method public o_()V
    .locals 0

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->o()V

    .line 461
    return-void
.end method

.method public onAgentEvent(Lcom/zhihu/android/app/ui/activity/AgentActivity$a;)V
    .locals 9
    .parameter
    .annotation runtime Lcom/squareup/b/h;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const v6, 0x7f09028b

    const/4 v4, 0x0

    .line 375
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->a()I

    move-result v1

    .line 376
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->b()I

    move-result v2

    .line 377
    invoke-virtual {p1}, Lcom/zhihu/android/app/ui/activity/AgentActivity$a;->c()Landroid/content/Intent;

    move-result-object v5

    .line 379
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 382
    const-string v2, "com.zhihu.android"

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zhihu/android/base/util/SystemUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 385
    packed-switch v1, :pswitch_data_0

    move-object v6, v0

    move-object v2, v0

    move-object v7, v0

    .line 403
    :goto_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "social_id"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "access_token"

    invoke-virtual {v5, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "expires_in"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "refresh_token"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/zhihu/android/api/model/RegisterForm;->createBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhihu/android/api/model/RegisterForm;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->m:Lcom/zhihu/android/api/b/a;

    invoke-static {}, Lcom/zhihu/android/app/util/av;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v7, v0, v6}, Lcom/zhihu/android/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zhihu/android/api/model/RegisterForm;Lcom/zhihu/android/bumblebee/b/c;)V

    .line 405
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 422
    :goto_1
    return-void

    .line 387
    :pswitch_0
    sget-object v0, Lcom/zhihu/android/api/util/GrantType;->SINA:Lcom/zhihu/android/api/util/GrantType;

    invoke-virtual {v0}, Lcom/zhihu/android/api/util/GrantType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    if-eqz v3, :cond_0

    const-string v0, "1081664247"

    .line 389
    :goto_2
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/preference/a$a;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->s:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-direct {v1, p0, v3}, Lcom/zhihu/android/app/ui/fragment/preference/a$a;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/a;Landroid/support/v7/preference/TwoStatePreference;)V

    move-object v6, v1

    move-object v7, v2

    move-object v2, v0

    .line 390
    goto :goto_0

    .line 388
    :cond_0
    const-string v0, "1709831639"

    goto :goto_2

    .line 392
    :pswitch_1
    sget-object v0, Lcom/zhihu/android/api/util/GrantType;->QQCONN:Lcom/zhihu/android/api/util/GrantType;

    invoke-virtual {v0}, Lcom/zhihu/android/api/util/GrantType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    if-eqz v3, :cond_1

    const-string v0, "100490701"

    .line 394
    :goto_3
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/preference/a$a;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->u:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-direct {v1, p0, v3}, Lcom/zhihu/android/app/ui/fragment/preference/a$a;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/a;Landroid/support/v7/preference/TwoStatePreference;)V

    move-object v6, v1

    move-object v7, v2

    move-object v2, v0

    .line 395
    goto :goto_0

    .line 393
    :cond_1
    const-string v0, "101118708"

    goto :goto_3

    .line 397
    :pswitch_2
    sget-object v0, Lcom/zhihu/android/api/util/GrantType;->WECHAT:Lcom/zhihu/android/api/util/GrantType;

    invoke-virtual {v0}, Lcom/zhihu/android/api/util/GrantType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    const-string v2, "wxd3f6cb54399a8489"

    .line 399
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/preference/a$a;

    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->t:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-direct {v0, p0, v3}, Lcom/zhihu/android/app/ui/fragment/preference/a$a;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/a;Landroid/support/v7/preference/TwoStatePreference;)V

    move-object v6, v0

    move-object v7, v1

    goto :goto_0

    .line 407
    :cond_2
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 413
    :pswitch_3
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->u:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v4}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    .line 414
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->u:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v6}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->e(I)V

    goto :goto_1

    .line 409
    :pswitch_4
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->s:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v4}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    .line 410
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->s:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v6}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->e(I)V

    goto :goto_1

    .line 417
    :pswitch_5
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->t:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v4}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->f(Z)V

    .line 418
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->t:Lcom/zhihu/android/app/ui/widget/SwitchPreference;

    invoke-virtual {v0, v6}, Lcom/zhihu/android/app/ui/widget/SwitchPreference;->e(I)V

    goto :goto_1

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 407
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 131
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/c;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/preference/a;->setHasOptionsMenu(Z)V

    .line 135
    const-class v0, Lcom/zhihu/android/api/b/a;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/a;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->m:Lcom/zhihu/android/api/b/a;

    .line 137
    const-class v0, Lcom/zhihu/android/api/b/ag;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/ag;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->n:Lcom/zhihu/android/api/b/ag;

    .line 139
    const-class v0, Lcom/zhihu/android/api/b/ae;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/ae;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/a;->o:Lcom/zhihu/android/api/b/ae;

    .line 141
    invoke-virtual {p0, v1}, Lcom/zhihu/android/app/ui/fragment/preference/a;->c(Z)V

    .line 142
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->b(Ljava/lang/Object;)V

    .line 159
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/preference/c;->onDestroyView()V

    .line 160
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/preference/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 147
    invoke-static {}, Lcom/zhihu/android/app/util/d;->a()Lcom/squareup/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/b/b;->a(Ljava/lang/Object;)V

    .line 148
    return-void
.end method
