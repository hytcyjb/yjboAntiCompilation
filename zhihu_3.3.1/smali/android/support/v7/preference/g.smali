.class public Landroid/support/v7/preference/g;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/g$b;,
        Landroid/support/v7/preference/g$a;,
        Landroid/support/v7/preference/g$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/SharedPreferences$Editor;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Landroid/support/v7/preference/PreferenceScreen;

.field private i:Landroid/support/v7/preference/g$c;

.field private j:Landroid/support/v7/preference/g$a;

.field private k:Landroid/support/v7/preference/g$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/preference/g;->b:J

    .line 92
    iput-object p1, p0, Landroid/support/v7/preference/g;->a:Landroid/content/Context;

    .line 94
    invoke-static {p1}, Landroid/support/v7/preference/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/g;->a(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter

    .prologue
    .line 212
    invoke-static {p0}, Landroid/support/v7/preference/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/preference/g;->h()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-static {p0}, Landroid/support/v7/preference/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/preference/g;->h()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 289
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 321
    const-string v0, "_has_set_default_values"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 324
    if-nez p4, :cond_0

    const-string v1, "_has_set_default_values"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    :cond_0
    new-instance v1, Landroid/support/v7/preference/g;

    invoke-direct {v1, p0}, Landroid/support/v7/preference/g;-><init>(Landroid/content/Context;)V

    .line 326
    invoke-virtual {v1, p1}, Landroid/support/v7/preference/g;->a(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1, p2}, Landroid/support/v7/preference/g;->a(I)V

    .line 328
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p3, v2}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_has_set_default_values"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    invoke-static {}, Landroid/support/v4/content/l$a;->a()Landroid/support/v4/content/l$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/l$a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 335
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 370
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/g;->d:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Landroid/support/v4/content/l$a;->a()Landroid/support/v4/content/l$a;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/g;->d:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/l$a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 373
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/preference/g;->e:Z

    .line 374
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method a()J
    .locals 4

    .prologue
    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-wide v0, p0, Landroid/support/v7/preference/g;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/support/v7/preference/g;->b:J

    monitor-exit p0

    return-wide v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/v7/preference/g;->h:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/g;->h:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/preference/g;->a(Z)V

    .line 114
    new-instance v0, Landroid/support/v7/preference/f;

    invoke-direct {v0, p1, p0}, Landroid/support/v7/preference/f;-><init>(Landroid/content/Context;Landroid/support/v7/preference/g;)V

    .line 115
    invoke-virtual {v0, p2, p3}, Landroid/support/v7/preference/f;->a(ILandroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    .line 116
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceScreen;->a(Landroid/support/v7/preference/g;)V

    .line 119
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v7/preference/g;->a(Z)V

    .line 121
    return-object v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iput p1, p0, Landroid/support/v7/preference/g;->g:I

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/preference/g;->c:Landroid/content/SharedPreferences;

    .line 185
    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Landroid/support/v7/preference/g;->j:Landroid/support/v7/preference/g$a;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Landroid/support/v7/preference/g;->j:Landroid/support/v7/preference/g$a;

    invoke-interface {v0, p1}, Landroid/support/v7/preference/g$a;->c(Landroid/support/v7/preference/Preference;)V

    .line 403
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/preference/g$a;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Landroid/support/v7/preference/g;->j:Landroid/support/v7/preference/g$a;

    .line 392
    return-void
.end method

.method public a(Landroid/support/v7/preference/g$b;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Landroid/support/v7/preference/g;->k:Landroid/support/v7/preference/g$b;

    .line 427
    return-void
.end method

.method public a(Landroid/support/v7/preference/g$c;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Landroid/support/v7/preference/g;->i:Landroid/support/v7/preference/g$c;

    .line 413
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Landroid/support/v7/preference/g;->f:Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/preference/g;->c:Landroid/content/SharedPreferences;

    .line 162
    return-void
.end method

.method public a(Landroid/support/v7/preference/PreferenceScreen;)Z
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/v7/preference/g;->h:Landroid/support/v7/preference/PreferenceScreen;

    if-eq p1, v0, :cond_0

    .line 241
    iput-object p1, p0, Landroid/support/v7/preference/g;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 242
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/v7/preference/g;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/support/v7/preference/g;->a:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/preference/g;->f:Ljava/lang/String;

    iget v2, p0, Landroid/support/v7/preference/g;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/g;->c:Landroid/content/SharedPreferences;

    .line 200
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/g;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public c()Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroid/support/v7/preference/g;->h:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method d()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Landroid/support/v7/preference/g;->e:Z

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Landroid/support/v7/preference/g;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/support/v7/preference/g;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/g;->d:Landroid/content/SharedPreferences$Editor;

    .line 352
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/g;->d:Landroid/content/SharedPreferences$Editor;

    .line 354
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/g;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Landroid/support/v7/preference/g;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Landroid/support/v7/preference/g$c;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v7/preference/g;->i:Landroid/support/v7/preference/g$c;

    return-object v0
.end method

.method public g()Landroid/support/v7/preference/g$b;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/support/v7/preference/g;->k:Landroid/support/v7/preference/g$b;

    return-object v0
.end method
