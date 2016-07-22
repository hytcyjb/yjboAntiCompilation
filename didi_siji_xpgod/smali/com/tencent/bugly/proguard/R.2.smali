.class public final Lcom/tencent/bugly/proguard/R;
.super Lcom/tencent/bugly/proguard/j;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static h:Lcom/tencent/bugly/proguard/Q;

.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/tencent/bugly/proguard/Q;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/R;->a:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/R;->b:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/R;->c:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/R;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/R;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/R;->f:Lcom/tencent/bugly/proguard/Q;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/R;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/h;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/R;->a:Z

    invoke-virtual {p1, v3, v1}, Lcom/tencent/bugly/proguard/h;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/R;->a:Z

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/R;->b:Z

    invoke-virtual {p1, v1, v1}, Lcom/tencent/bugly/proguard/h;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/R;->b:Z

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/R;->c:Z

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/h;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/R;->c:Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/R;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/R;->e:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/R;->h:Lcom/tencent/bugly/proguard/Q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/proguard/Q;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/Q;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/R;->h:Lcom/tencent/bugly/proguard/Q;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/R;->h:Lcom/tencent/bugly/proguard/Q;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/j;IZ)Lcom/tencent/bugly/proguard/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/Q;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/R;->f:Lcom/tencent/bugly/proguard/Q;

    sget-object v0, Lcom/tencent/bugly/proguard/R;->i:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/R;->i:Ljava/util/Map;

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lcom/tencent/bugly/proguard/R;->i:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/R;->i:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/R;->g:Ljava/util/Map;

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/R;->a:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(ZI)V

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/R;->b:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(ZI)V

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/R;->c:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(ZI)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/R;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/R;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/R;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/R;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/R;->f:Lcom/tencent/bugly/proguard/Q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/R;->f:Lcom/tencent/bugly/proguard/Q;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/j;I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/R;->g:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/R;->g:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;I)V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 0

    return-void
.end method
