.class public final Landroid/support/design/widget/TabLayout$d;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:I

.field private f:Landroid/view/View;

.field private final g:Landroid/support/design/widget/TabLayout;

.field private h:Landroid/support/design/widget/TabLayout$f;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1093
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$d;->e:I

    .line 1100
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$d;->g:Landroid/support/design/widget/TabLayout;

    .line 1101
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$d;Landroid/support/design/widget/TabLayout$f;)Landroid/support/design/widget/TabLayout$f;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1080
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$d;->h:Landroid/support/design/widget/TabLayout$f;

    return-object p1
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$d;)Landroid/support/design/widget/TabLayout;
    .locals 1
    .parameter

    .prologue
    .line 1080
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->g:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method static synthetic b(Landroid/support/design/widget/TabLayout$d;)V
    .locals 0
    .parameter

    .prologue
    .line 1080
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$d;->h()V

    return-void
.end method

.method static synthetic c(Landroid/support/design/widget/TabLayout$d;)V
    .locals 0
    .parameter

    .prologue
    .line 1080
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$d;->g()V

    return-void
.end method

.method static synthetic d(Landroid/support/design/widget/TabLayout$d;)Landroid/support/design/widget/TabLayout$f;
    .locals 1
    .parameter

    .prologue
    .line 1080
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->h:Landroid/support/design/widget/TabLayout$f;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->h:Landroid/support/design/widget/TabLayout$f;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->h:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->a()V

    .line 1318
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1321
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$d;->h:Landroid/support/design/widget/TabLayout$f;

    .line 1322
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$d;->a:Ljava/lang/Object;

    .line 1323
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$d;->b:Landroid/graphics/drawable/Drawable;

    .line 1324
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$d;->c:Ljava/lang/CharSequence;

    .line 1325
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$d;->d:Ljava/lang/CharSequence;

    .line 1326
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$d;->e:I

    .line 1327
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$d;->f:Landroid/view/View;

    .line 1328
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/design/widget/TabLayout$d;
    .locals 3
    .parameter

    .prologue
    .line 1170
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->h:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1171
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$d;->h:Landroid/support/design/widget/TabLayout$f;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$d;->a(Landroid/view/View;)Landroid/support/design/widget/TabLayout$d;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$d;
    .locals 0
    .parameter

    .prologue
    .line 1216
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$d;->b:Landroid/graphics/drawable/Drawable;

    .line 1217
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$d;->g()V

    .line 1218
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/design/widget/TabLayout$d;
    .locals 0
    .parameter

    .prologue
    .line 1150
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$d;->f:Landroid/view/View;

    .line 1151
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$d;->g()V

    .line 1152
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$d;
    .locals 0
    .parameter

    .prologue
    .line 1241
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$d;->c:Ljava/lang/CharSequence;

    .line 1242
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$d;->g()V

    .line 1243
    return-object p0
.end method

.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->f:Landroid/view/View;

    return-object v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method b(I)V
    .locals 0
    .parameter

    .prologue
    .line 1195
    iput p1, p0, Landroid/support/design/widget/TabLayout$d;->e:I

    .line 1196
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1191
    iget v0, p0, Landroid/support/design/widget/TabLayout$d;->e:I

    return v0
.end method

.method public c(I)Landroid/support/design/widget/TabLayout$d;
    .locals 2
    .parameter

    .prologue
    .line 1229
    invoke-static {}, Landroid/support/v7/widget/h;->a()Landroid/support/v7/widget/h;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$d;->g:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$d;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$d;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->g:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$d;)V

    .line 1263
    return-void
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d;->d:Ljava/lang/CharSequence;

    return-object v0
.end method
