.class public abstract Landroid/support/v7/preference/PreferenceGroup;
.super Landroid/support/v7/preference/Preference;
.source "PreferenceGroup.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private d:Z

.field private final e:Landroid/support/v4/e/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/i",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    iput-boolean v3, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Z

    .line 56
    iput v0, p0, Landroid/support/v7/preference/PreferenceGroup;->c:I

    .line 58
    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->d:Z

    .line 60
    new-instance v0, Landroid/support/v4/e/i;

    invoke-direct {v0}, Landroid/support/v4/e/i;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->e:Landroid/support/v4/e/i;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->f:Landroid/os/Handler;

    .line 62
    new-instance v0, Landroid/support/v7/preference/PreferenceGroup$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/PreferenceGroup$1;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->g:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->a:Ljava/util/List;

    .line 76
    sget-object v0, Landroid/support/v7/preference/i$d;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    sget v1, Landroid/support/v7/preference/i$d;->PreferenceGroup_orderingFromXml:I

    sget v2, Landroid/support/v7/preference/i$d;->PreferenceGroup_orderingFromXml:I

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/a/c;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Z

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method static synthetic a(Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v4/e/i;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->e:Landroid/support/v4/e/i;

    return-object v0
.end method


# virtual methods
.method public I()V
    .locals 3

    .prologue
    .line 325
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->I()V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->d:Z

    .line 332
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->a()I

    move-result v1

    .line 333
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 334
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->f(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->I()V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method

.method public a()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->b(Landroid/os/Bundle;)V

    .line 369
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->a()I

    move-result v1

    .line 370
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 371
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->f(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->b(Landroid/os/Bundle;)V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->h()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/preference/Preference;->b(Landroid/support/v7/preference/Preference;Z)V

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 4
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-object p0

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->a()I

    move-result v2

    .line 284
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 285
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->f(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->y()Ljava/lang/String;

    move-result-object v3

    .line 288
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p0, v0

    .line 289
    goto :goto_0

    .line 292
    :cond_1
    instance-of v3, v0, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 293
    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_2

    move-object p0, v0

    .line 296
    goto :goto_0

    .line 284
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 301
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 1

    .prologue
    .line 359
    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 361
    monitor-exit p0

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->d(Landroid/support/v7/preference/Preference;)Z

    .line 124
    return-void
.end method

.method public c(Z)V
    .locals 3
    .parameter

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->c(Z)V

    .line 352
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->a()I

    move-result v1

    .line 353
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 354
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->f(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/support/v7/preference/Preference;->b(Landroid/support/v7/preference/Preference;Z)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    return-void
.end method

.method protected d(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->d(Landroid/os/Bundle;)V

    .line 380
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->a()I

    move-result v1

    .line 381
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 382
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->f(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->d(Landroid/os/Bundle;)V

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_0
    return-void
.end method

.method public d(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 152
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 199
    :goto_0
    return v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->s()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 158
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Z

    if-eqz v0, :cond_1

    .line 159
    iget v0, p0, Landroid/support/v7/preference/PreferenceGroup;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v7/preference/PreferenceGroup;->c:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->c(I)V

    .line 162
    :cond_1
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 165
    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iget-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->f(Z)V

    .line 169
    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->a:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 170
    if-gez v0, :cond_3

    .line 171
    mul-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 174
    :cond_3
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->b(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 175
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :cond_4
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->a:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->H()Landroid/support/v7/preference/g;

    move-result-object v3

    .line 183
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->y()Ljava/lang/String;

    move-result-object v4

    .line 185
    if-eqz v4, :cond_6

    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->e:Landroid/support/v4/e/i;

    invoke-virtual {v0, v4}, Landroid/support/v4/e/i;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->e:Landroid/support/v4/e/i;

    invoke-virtual {v0, v4}, Landroid/support/v4/e/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 187
    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroup;->e:Landroid/support/v4/e/i;

    invoke-virtual {v5, v4}, Landroid/support/v4/e/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :goto_1
    invoke-virtual {p1, v3, v0, v1}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/g;J)V

    .line 193
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->d:Z

    if-eqz v0, :cond_5

    .line 194
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->I()V

    .line 197
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->G()V

    move v0, v2

    .line 199
    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 189
    :cond_6
    invoke-virtual {v3}, Landroid/support/v7/preference/g;->a()J

    move-result-wide v0

    goto :goto_1
.end method

.method public f(I)Landroid/support/v7/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method public f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Z

    .line 107
    return-void
.end method
