.class public final Landroid/support/v7/widget/h;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/h$1;,
        Landroid/support/v7/widget/h$a;,
        Landroid/support/v7/widget/h$d;,
        Landroid/support/v7/widget/h$b;,
        Landroid/support/v7/widget/h$c;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/PorterDuff$Mode;

.field private static b:Landroid/support/v7/widget/h;

.field private static final c:Landroid/support/v7/widget/h$b;

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I


# instance fields
.field private j:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Landroid/support/v4/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/h$c;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/Object;

.field private final n:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/e/e",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private o:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/h;->a:Landroid/graphics/PorterDuff$Mode;

    .line 100
    new-instance v0, Landroid/support/v7/widget/h$b;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/v7/widget/h$b;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/h$b;

    .line 106
    new-array v0, v5, [I

    sget v1, Landroid/support/v7/a/a$e;->abc_textfield_search_default_mtrl_alpha:I

    aput v1, v0, v2

    sget v1, Landroid/support/v7/a/a$e;->abc_textfield_default_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/a$e;->abc_ab_share_pack_mtrl_alpha:I

    aput v1, v0, v4

    sput-object v0, Landroid/support/v7/widget/h;->d:[I

    .line 116
    new-array v0, v4, [I

    sget v1, Landroid/support/v7/a/a$e;->abc_ic_search_api_mtrl_alpha:I

    aput v1, v0, v2

    sget v1, Landroid/support/v7/a/a$e;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v1, v0, v3

    sput-object v0, Landroid/support/v7/widget/h;->e:[I

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/a/a$e;->abc_textfield_activated_mtrl_alpha:I

    aput v1, v0, v2

    sget v1, Landroid/support/v7/a/a$e;->abc_textfield_search_activated_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/a$e;->abc_cab_background_top_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/a/a$e;->abc_text_cursor_material:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/h;->f:[I

    .line 136
    new-array v0, v5, [I

    sget v1, Landroid/support/v7/a/a$e;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v2

    sget v1, Landroid/support/v7/a/a$e;->abc_cab_background_internal_bg:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/a$e;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v4

    sput-object v0, Landroid/support/v7/widget/h;->g:[I

    .line 146
    new-array v0, v5, [I

    sget v1, Landroid/support/v7/a/a$e;->abc_tab_indicator_material:I

    aput v1, v0, v2

    sget v1, Landroid/support/v7/a/a$e;->abc_textfield_search_material:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/a$e;->abc_ratingbar_full_material:I

    aput v1, v0, v4

    sput-object v0, Landroid/support/v7/widget/h;->h:[I

    .line 157
    new-array v0, v4, [I

    sget v1, Landroid/support/v7/a/a$e;->abc_btn_check_material:I

    aput v1, v0, v2

    sget v1, Landroid/support/v7/a/a$e;->abc_btn_radio_material:I

    aput v1, v0, v3

    sput-object v0, Landroid/support/v7/widget/h;->i:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/h;->m:Ljava/lang/Object;

    .line 167
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/h;->n:Ljava/util/WeakHashMap;

    .line 838
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x7

    .line 523
    sget v0, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v0

    .line 524
    sget v1, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v1}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v1

    .line 526
    new-array v2, v3, [[I

    .line 527
    new-array v3, v3, [I

    .line 528
    const/4 v4, 0x0

    .line 531
    sget-object v5, Landroid/support/v7/widget/ak;->a:[I

    aput-object v5, v2, v4

    .line 532
    sget v5, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v5}, Landroid/support/v7/widget/ak;->c(Landroid/content/Context;I)I

    move-result v5

    aput v5, v3, v4

    .line 533
    const/4 v4, 0x1

    .line 535
    sget-object v5, Landroid/support/v7/widget/ak;->b:[I

    aput-object v5, v2, v4

    .line 536
    aput v1, v3, v4

    .line 537
    const/4 v4, 0x2

    .line 539
    sget-object v5, Landroid/support/v7/widget/ak;->c:[I

    aput-object v5, v2, v4

    .line 540
    aput v1, v3, v4

    .line 541
    const/4 v4, 0x3

    .line 543
    sget-object v5, Landroid/support/v7/widget/ak;->d:[I

    aput-object v5, v2, v4

    .line 544
    aput v1, v3, v4

    .line 545
    const/4 v4, 0x4

    .line 547
    sget-object v5, Landroid/support/v7/widget/ak;->e:[I

    aput-object v5, v2, v4

    .line 548
    aput v1, v3, v4

    .line 549
    const/4 v4, 0x5

    .line 551
    sget-object v5, Landroid/support/v7/widget/ak;->f:[I

    aput-object v5, v2, v4

    .line 552
    aput v1, v3, v4

    .line 553
    const/4 v1, 0x6

    .line 556
    sget-object v4, Landroid/support/v7/widget/ak;->h:[I

    aput-object v4, v2, v1

    .line 557
    aput v0, v3, v1

    .line 560
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 806
    sget-object v0, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/h$b;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/h$b;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 808
    if-nez v0, :cond_0

    .line 810
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 811
    sget-object v1, Landroid/support/v7/widget/h;->c:Landroid/support/v7/widget/h$b;

    invoke-virtual {v1, p0, p1, v0}, Landroid/support/v7/widget/h$b;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 814
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 797
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 798
    :cond_0
    const/4 v0, 0x0

    .line 801
    :goto_0
    return-object v0

    .line 800
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 801
    invoke-static {v0, p1}, Landroid/support/v7/widget/h;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x102000f

    const v4, 0x102000d

    const/high16 v1, 0x102

    .line 195
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/h;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_2

    .line 198
    invoke-static {p4}, Landroid/support/v7/widget/w;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 201
    :cond_0
    invoke-static {p4}, Landroid/support/v4/b/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 202
    invoke-static {p4, v0}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 205
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/h;->a(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_1

    .line 207
    invoke-static {p4, v0}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 240
    :cond_1
    :goto_0
    return-object p4

    .line 209
    :cond_2
    sget v0, Landroid/support/v7/a/a$e;->abc_cab_background_top_material:I

    if-ne p2, v0, :cond_3

    .line 210
    new-instance p4, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/a/a$e;->abc_cab_background_internal_bg:I

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Landroid/support/v7/a/a$e;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 214
    :cond_3
    sget v0, Landroid/support/v7/a/a$e;->abc_seekbar_track_material:I

    if-ne p2, v0, :cond_4

    move-object v0, p4

    .line 215
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 216
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/h;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/h;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 218
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/h;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/h;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 220
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v1}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/support/v7/widget/h;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/h;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 222
    :cond_4
    sget v0, Landroid/support/v7/a/a$e;->abc_ratingbar_indicator_material:I

    if-eq p2, v0, :cond_5

    sget v0, Landroid/support/v7/a/a$e;->abc_ratingbar_small_material:I

    if-ne p2, v0, :cond_6

    :cond_5
    move-object v0, p4

    .line 224
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 225
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ak;->c(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/h;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/h;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 228
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/h;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/h;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 230
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v1}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/support/v7/widget/h;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/h;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 233
    :cond_6
    invoke-static {p1, p2, p4}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 234
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 237
    const/4 p4, 0x0

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-object v3, p0, Landroid/support/v7/widget/h;->m:Ljava/lang/Object;

    monitor-enter v3

    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/h;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/e;

    .line 333
    if-nez v0, :cond_0

    .line 334
    monitor-exit v3

    move-object v0, v2

    .line 349
    :goto_0
    return-object v0

    .line 337
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/e/e;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 338
    if-eqz v1, :cond_2

    .line 340
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 341
    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    monitor-exit v3

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 345
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/e/e;->b(J)V

    .line 348
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 349
    goto :goto_0
.end method

.method public static a()Landroid/support/v7/widget/h;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/h;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/support/v7/widget/h;

    invoke-direct {v0}, Landroid/support/v7/widget/h;-><init>()V

    sput-object v0, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/h;

    .line 81
    sget-object v0, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/h;

    invoke-static {v0}, Landroid/support/v7/widget/h;->a(Landroid/support/v7/widget/h;)V

    .line 83
    :cond_0
    sget-object v0, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/h;

    return-object v0
.end method

.method private a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Landroid/support/v7/widget/h;->j:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/h;->j:Ljava/util/WeakHashMap;

    .line 509
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/h;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 510
    if-nez v0, :cond_1

    .line 511
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 512
    iget-object v1, p0, Landroid/support/v7/widget/h;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 515
    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 818
    invoke-static {p0}, Landroid/support/v7/widget/w;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 821
    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Landroid/support/v7/widget/h;->a:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    invoke-static {p1, p2}, Landroid/support/v7/widget/h;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 822
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/an;[I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 773
    invoke-static {p0}, Landroid/support/v7/widget/w;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 775
    const-string v0, "AppCompatDrawableManager"

    const-string v1, "Mutated drawable is not the same instance as the input."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/widget/an;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v7/widget/an;->c:Z

    if-eqz v0, :cond_5

    .line 780
    :cond_2
    iget-boolean v0, p1, Landroid/support/v7/widget/an;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/support/v7/widget/an;->a:Landroid/content/res/ColorStateList;

    :goto_1
    iget-boolean v1, p1, Landroid/support/v7/widget/an;->c:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/support/v7/widget/an;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-static {v0, v1, p2}, Landroid/support/v7/widget/h;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 788
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 791
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 780
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    sget-object v1, Landroid/support/v7/widget/h;->a:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 785
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3
.end method

.method private static a(Landroid/support/v7/widget/h;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 91
    const-string v1, "vector"

    new-instance v2, Landroid/support/v7/widget/h$d;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/h$d;-><init>(Landroid/support/v7/widget/h$1;)V

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/h;->a(Ljava/lang/String;Landroid/support/v7/widget/h$c;)V

    .line 93
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 95
    const-string v0, "animated-vector"

    new-instance v1, Landroid/support/v7/widget/h$a;

    invoke-direct {v1, v3}, Landroid/support/v7/widget/h$a;-><init>(Landroid/support/v7/widget/h$1;)V

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/h;->a(Ljava/lang/String;Landroid/support/v7/widget/h$c;)V

    .line 98
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/support/v7/widget/h$c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 428
    iget-object v0, p0, Landroid/support/v7/widget/h;->k:Landroid/support/v4/e/a;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/h;->k:Landroid/support/v4/e/a;

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/h;->k:Landroid/support/v4/e/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    return-void
.end method

.method private static a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 384
    sget-object v5, Landroid/support/v7/widget/h;->a:Landroid/graphics/PorterDuff$Mode;

    .line 389
    sget-object v2, Landroid/support/v7/widget/h;->d:[I

    invoke-static {v2, p1}, Landroid/support/v7/widget/h;->a([II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    sget v2, Landroid/support/v7/a/a$a;->colorControlNormal:I

    move v4, v2

    move-object v6, v5

    move v5, v0

    move v2, v3

    .line 405
    :goto_0
    if-eqz v5, :cond_5

    .line 406
    invoke-static {p2}, Landroid/support/v7/widget/w;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 410
    :cond_0
    invoke-static {p0, v4}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v1

    .line 411
    invoke-static {v1, v6}, Landroid/support/v7/widget/h;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 413
    if-eq v2, v3, :cond_1

    .line 414
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 424
    :cond_1
    :goto_1
    return v0

    .line 392
    :cond_2
    sget-object v2, Landroid/support/v7/widget/h;->f:[I

    invoke-static {v2, p1}, Landroid/support/v7/widget/h;->a([II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 393
    sget v2, Landroid/support/v7/a/a$a;->colorControlActivated:I

    move v4, v2

    move-object v6, v5

    move v5, v0

    move v2, v3

    .line 394
    goto :goto_0

    .line 395
    :cond_3
    sget-object v2, Landroid/support/v7/widget/h;->g:[I

    invoke-static {v2, p1}, Landroid/support/v7/widget/h;->a([II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 396
    const v2, 0x1010031

    .line 398
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move v5, v0

    move-object v6, v4

    move v4, v2

    move v2, v3

    goto :goto_0

    .line 399
    :cond_4
    sget v2, Landroid/support/v7/a/a$e;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v2, :cond_6

    .line 400
    const v4, 0x1010030

    .line 402
    const v2, 0x42233333

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object v6, v5

    move v5, v0

    goto :goto_0

    :cond_5
    move v0, v1

    .line 424
    goto :goto_1

    :cond_6
    move v2, v3

    move v4, v1

    move-object v6, v5

    move v5, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_1

    .line 356
    iget-object v2, p0, Landroid/support/v7/widget/h;->m:Ljava/lang/Object;

    monitor-enter v2

    .line 357
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/h;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/e;

    .line 359
    if-nez v0, :cond_0

    .line 360
    new-instance v0, Landroid/support/v4/e/e;

    invoke-direct {v0}, Landroid/support/v4/e/e;-><init>()V

    .line 361
    iget-object v3, p0, Landroid/support/v7/widget/h;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_0
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, v3}, Landroid/support/v4/e/e;->b(JLjava/lang/Object;)V

    .line 364
    monitor-exit v2

    .line 365
    const/4 v0, 0x1

    .line 367
    :goto_0
    return v0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 367
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([II)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 441
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 442
    if-ne v3, p1, :cond_1

    .line 443
    const/4 v0, 0x1

    .line 446
    :cond_0
    return v0

    .line 441
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 564
    new-array v0, v1, [[I

    .line 565
    new-array v1, v1, [I

    .line 566
    const/4 v2, 0x0

    .line 569
    sget-object v3, Landroid/support/v7/widget/ak;->a:[I

    aput-object v3, v0, v2

    .line 570
    sget v3, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ak;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 571
    const/4 v2, 0x1

    .line 573
    sget-object v3, Landroid/support/v7/widget/ak;->e:[I

    aput-object v3, v0, v2

    .line 574
    sget v3, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 575
    const/4 v2, 0x2

    .line 578
    sget-object v3, Landroid/support/v7/widget/ak;->h:[I

    aput-object v3, v0, v2

    .line 579
    sget v3, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 582
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private c(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6
    .parameter

    .prologue
    const v5, 0x1010030

    const/4 v1, 0x3

    const v4, 0x3e99999a

    .line 586
    new-array v0, v1, [[I

    .line 587
    new-array v1, v1, [I

    .line 588
    const/4 v2, 0x0

    .line 591
    sget-object v3, Landroid/support/v7/widget/ak;->a:[I

    aput-object v3, v0, v2

    .line 592
    const v3, 0x3dcccccd

    invoke-static {p1, v5, v3}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v1, v2

    .line 593
    const/4 v2, 0x1

    .line 595
    sget-object v3, Landroid/support/v7/widget/ak;->e:[I

    aput-object v3, v0, v2

    .line 596
    sget v3, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v3, v4}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v1, v2

    .line 597
    const/4 v2, 0x2

    .line 600
    sget-object v3, Landroid/support/v7/widget/ak;->h:[I

    aput-object v3, v0, v2

    .line 601
    invoke-static {p1, v5, v4}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v1, v2

    .line 604
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 244
    iget-object v0, p0, Landroid/support/v7/widget/h;->k:Landroid/support/v4/e/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/h;->k:Landroid/support/v4/e/a;

    invoke-virtual {v0}, Landroid/support/v4/e/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 245
    iget-object v0, p0, Landroid/support/v7/widget/h;->l:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Landroid/support/v7/widget/h;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    const-string v2, "appcompat_skip_skip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/h;->k:Landroid/support/v4/e/a;

    invoke-virtual {v2, v0}, Landroid/support/v4/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    move-object v0, v1

    .line 326
    :cond_1
    :goto_0
    return-object v0

    .line 259
    :cond_2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/h;->l:Landroid/util/SparseArray;

    .line 262
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/h;->o:Landroid/util/TypedValue;

    if-nez v0, :cond_4

    .line 263
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/h;->o:Landroid/util/TypedValue;

    .line 266
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/h;->o:Landroid/util/TypedValue;

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 268
    invoke-virtual {v0, p2, v2, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 270
    iget v1, v2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    iget v1, v2, Landroid/util/TypedValue;->data:I

    int-to-long v6, v1

    or-long/2addr v4, v6

    .line 272
    invoke-direct {p0, p1, v4, v5}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_5

    move-object v0, v1

    .line 279
    goto :goto_0

    .line 282
    :cond_5
    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ".xml"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 285
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 286
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 288
    :cond_6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v9, :cond_7

    if-ne v0, v8, :cond_6

    .line 292
    :cond_7
    if-eq v0, v9, :cond_9

    .line 293
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    const-string v2, "AppCompatDrawableManager"

    const-string v3, "Exception while inflating drawable"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    move-object v0, v1

    .line 318
    :goto_1
    if-nez v0, :cond_1

    .line 321
    iget-object v1, p0, Landroid/support/v7/widget/h;->l:Landroid/util/SparseArray;

    const-string v2, "appcompat_skip_skip"

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 296
    :cond_9
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v7, p0, Landroid/support/v7/widget/h;->l:Landroid/util/SparseArray;

    invoke-virtual {v7, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 301
    iget-object v7, p0, Landroid/support/v7/widget/h;->k:Landroid/support/v4/e/a;

    invoke-virtual {v7, v0}, Landroid/support/v4/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/h$c;

    .line 302
    if-eqz v0, :cond_a

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-interface {v0, p1, v3, v6, v7}, Landroid/support/v7/widget/h$c;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 306
    :cond_a
    if-eqz v1, :cond_b

    .line 308
    iget v0, v2, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 309
    invoke-direct {p0, p1, v4, v5, v1}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_b

    :cond_b
    move-object v0, v1

    .line 316
    goto :goto_1

    :cond_c
    move-object v0, v1

    .line 326
    goto/16 :goto_0
.end method

.method private d(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 608
    new-array v0, v1, [[I

    .line 609
    new-array v1, v1, [I

    .line 612
    sget v2, Landroid/support/v7/a/a$a;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ak;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 615
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    sget-object v3, Landroid/support/v7/widget/ak;->a:[I

    aput-object v3, v0, v4

    .line 621
    aget-object v3, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    aput v3, v1, v4

    .line 624
    sget-object v3, Landroid/support/v7/widget/ak;->e:[I

    aput-object v3, v0, v5

    .line 625
    sget v3, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v5

    .line 629
    sget-object v3, Landroid/support/v7/widget/ak;->h:[I

    aput-object v3, v0, v6

    .line 630
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    aput v2, v1, v6

    .line 650
    :goto_0
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 636
    :cond_0
    sget-object v2, Landroid/support/v7/widget/ak;->a:[I

    aput-object v2, v0, v4

    .line 637
    sget v2, Landroid/support/v7/a/a$a;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ak;->c(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v4

    .line 640
    sget-object v2, Landroid/support/v7/widget/ak;->e:[I

    aput-object v2, v0, v5

    .line 641
    sget v2, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v5

    .line 645
    sget-object v2, Landroid/support/v7/widget/ak;->h:[I

    aput-object v2, v0, v6

    .line 646
    sget v2, Landroid/support/v7/a/a$a;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v6

    goto :goto_0
.end method

.method private d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-object v0, p0, Landroid/support/v7/widget/h;->j:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Landroid/support/v7/widget/h;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 499
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 501
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 499
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 501
    goto :goto_0
.end method

.method private e(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 654
    new-array v0, v1, [[I

    .line 655
    new-array v1, v1, [I

    .line 656
    const/4 v2, 0x0

    .line 659
    sget-object v3, Landroid/support/v7/widget/ak;->a:[I

    aput-object v3, v0, v2

    .line 660
    sget v3, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ak;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 661
    const/4 v2, 0x1

    .line 663
    sget-object v3, Landroid/support/v7/widget/ak;->g:[I

    aput-object v3, v0, v2

    .line 664
    sget v3, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 665
    const/4 v2, 0x2

    .line 668
    sget-object v3, Landroid/support/v7/widget/ak;->h:[I

    aput-object v3, v0, v2

    .line 669
    sget v3, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 672
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 684
    new-array v0, v1, [[I

    .line 685
    new-array v1, v1, [I

    .line 686
    const/4 v2, 0x0

    .line 688
    invoke-static {p1, p2}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v3

    .line 689
    sget v4, Landroid/support/v7/a/a$a;->colorControlHighlight:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v4

    .line 692
    sget-object v5, Landroid/support/v7/widget/ak;->a:[I

    aput-object v5, v0, v2

    .line 693
    sget v5, Landroid/support/v7/a/a$a;->colorButtonNormal:I

    invoke-static {p1, v5}, Landroid/support/v7/widget/ak;->c(Landroid/content/Context;I)I

    move-result v5

    aput v5, v1, v2

    .line 694
    const/4 v2, 0x1

    .line 696
    sget-object v5, Landroid/support/v7/widget/ak;->d:[I

    aput-object v5, v0, v2

    .line 697
    invoke-static {v4, v3}, Landroid/support/v4/b/a;->a(II)I

    move-result v5

    aput v5, v1, v2

    .line 698
    const/4 v2, 0x2

    .line 700
    sget-object v5, Landroid/support/v7/widget/ak;->b:[I

    aput-object v5, v0, v2

    .line 701
    invoke-static {v4, v3}, Landroid/support/v4/b/a;->a(II)I

    move-result v4

    aput v4, v1, v2

    .line 702
    const/4 v2, 0x3

    .line 705
    sget-object v4, Landroid/support/v7/widget/ak;->h:[I

    aput-object v4, v0, v2

    .line 706
    aput v3, v1, v2

    .line 709
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private f(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter

    .prologue
    .line 676
    sget v0, Landroid/support/v7/a/a$a;->colorButtonNormal:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/h;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private g(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter

    .prologue
    .line 680
    sget v0, Landroid/support/v7/a/a$a;->colorAccent:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/h;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private h(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 713
    new-array v0, v1, [[I

    .line 714
    new-array v1, v1, [I

    .line 715
    const/4 v2, 0x0

    .line 718
    sget-object v3, Landroid/support/v7/widget/ak;->a:[I

    aput-object v3, v0, v2

    .line 719
    sget v3, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ak;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 720
    const/4 v2, 0x1

    .line 722
    sget-object v3, Landroid/support/v7/widget/ak;->g:[I

    aput-object v3, v0, v2

    .line 723
    sget v3, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 724
    const/4 v2, 0x2

    .line 726
    sget-object v3, Landroid/support/v7/widget/ak;->h:[I

    aput-object v3, v0, v2

    .line 727
    sget v3, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 730
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private i(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 734
    new-array v0, v1, [[I

    .line 735
    new-array v1, v1, [I

    .line 736
    const/4 v2, 0x0

    .line 739
    sget-object v3, Landroid/support/v7/widget/ak;->a:[I

    aput-object v3, v0, v2

    .line 740
    sget v3, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ak;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 741
    const/4 v2, 0x1

    .line 743
    sget-object v3, Landroid/support/v7/widget/ak;->h:[I

    aput-object v3, v0, v2

    .line 744
    sget v3, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ak;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 747
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method


# virtual methods
.method final a(I)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .parameter

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 452
    sget v1, Landroid/support/v7/a/a$e;->abc_switch_thumb_material:I

    if-ne p1, v1, :cond_0

    .line 453
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 456
    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/h;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    .line 180
    invoke-static {p1, p2}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 182
    :cond_0
    if-eqz v0, :cond_1

    .line 184
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    :cond_1
    if-eqz v0, :cond_2

    .line 188
    invoke-static {v0}, Landroid/support/v7/widget/w;->b(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :cond_2
    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/widget/ao;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-direct {p0, p1, p3}, Landroid/support/v7/widget/h;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 373
    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/ao;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 376
    :cond_0
    if-eqz v0, :cond_1

    .line 377
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 461
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/h;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 463
    if-nez v0, :cond_1

    .line 465
    sget v1, Landroid/support/v7/a/a$e;->abc_edit_text_material:I

    if-ne p2, v1, :cond_2

    .line 466
    invoke-direct {p0, p1}, Landroid/support/v7/widget/h;->e(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 489
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 490
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    .line 493
    :cond_1
    return-object v0

    .line 467
    :cond_2
    sget v1, Landroid/support/v7/a/a$e;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v1, :cond_3

    .line 468
    invoke-direct {p0, p1}, Landroid/support/v7/widget/h;->c(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_3
    sget v1, Landroid/support/v7/a/a$e;->abc_switch_thumb_material:I

    if-ne p2, v1, :cond_4

    .line 470
    invoke-direct {p0, p1}, Landroid/support/v7/widget/h;->d(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_4
    sget v1, Landroid/support/v7/a/a$e;->abc_btn_default_mtrl_shape:I

    if-eq p2, v1, :cond_5

    sget v1, Landroid/support/v7/a/a$e;->abc_btn_borderless_material:I

    if-ne p2, v1, :cond_6

    .line 473
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v7/widget/h;->f(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 474
    :cond_6
    sget v1, Landroid/support/v7/a/a$e;->abc_btn_colored_material:I

    if-ne p2, v1, :cond_7

    .line 475
    invoke-direct {p0, p1}, Landroid/support/v7/widget/h;->g(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 476
    :cond_7
    sget v1, Landroid/support/v7/a/a$e;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v1, :cond_8

    sget v1, Landroid/support/v7/a/a$e;->abc_spinner_textfield_background_material:I

    if-ne p2, v1, :cond_9

    .line 478
    :cond_8
    invoke-direct {p0, p1}, Landroid/support/v7/widget/h;->h(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_9
    sget-object v1, Landroid/support/v7/widget/h;->e:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/h;->a([II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 480
    sget v0, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/ak;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 481
    :cond_a
    sget-object v1, Landroid/support/v7/widget/h;->h:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/h;->a([II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 482
    invoke-direct {p0, p1}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 483
    :cond_b
    sget-object v1, Landroid/support/v7/widget/h;->i:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/h;->a([II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 484
    invoke-direct {p0, p1}, Landroid/support/v7/widget/h;->b(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_c
    sget v1, Landroid/support/v7/a/a$e;->abc_seekbar_thumb_material:I

    if-ne p2, v1, :cond_0

    .line 486
    invoke-direct {p0, p1}, Landroid/support/v7/widget/h;->i(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method
