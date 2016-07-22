.class public final Lio/realm/t;
.super Ljava/util/AbstractList;
.source "RealmResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/t$b;,
        Lio/realm/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lio/realm/q;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:Lio/realm/c;

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field private d:Lio/realm/internal/TableOrView;

.field private e:J

.field private final f:Lio/realm/internal/TableQuery;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/m;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method private constructor <init>(Lio/realm/c;Lio/realm/internal/TableOrView;Ljava/lang/Class;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/c;",
            "Lio/realm/internal/TableOrView;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 74
    iput-object v2, p0, Lio/realm/t;->d:Lio/realm/internal/TableOrView;

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/t;->e:J

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/t;->i:Z

    .line 122
    iput-object p1, p0, Lio/realm/t;->a:Lio/realm/c;

    .line 123
    iput-object p3, p0, Lio/realm/t;->b:Ljava/lang/Class;

    .line 124
    iput-object p2, p0, Lio/realm/t;->d:Lio/realm/internal/TableOrView;

    .line 126
    iput-object v2, p0, Lio/realm/t;->h:Ljava/util/concurrent/Future;

    .line 127
    iput-object v2, p0, Lio/realm/t;->f:Lio/realm/internal/TableQuery;

    .line 128
    invoke-interface {p2}, Lio/realm/internal/TableOrView;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/t;->e:J

    .line 129
    return-void
.end method

.method private constructor <init>(Lio/realm/c;Lio/realm/internal/TableOrView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1, p3}, Lio/realm/t;-><init>(Lio/realm/c;Ljava/lang/String;)V

    .line 141
    iput-object p2, p0, Lio/realm/t;->d:Lio/realm/internal/TableOrView;

    .line 142
    return-void
.end method

.method private constructor <init>(Lio/realm/c;Lio/realm/internal/TableQuery;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/c;",
            "Lio/realm/internal/TableQuery;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/t;->d:Lio/realm/internal/TableOrView;

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/t;->e:J

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/t;->i:Z

    .line 110
    iput-object p1, p0, Lio/realm/t;->a:Lio/realm/c;

    .line 111
    iput-object p3, p0, Lio/realm/t;->b:Ljava/lang/Class;

    .line 112
    iput-object p2, p0, Lio/realm/t;->f:Lio/realm/internal/TableQuery;

    .line 113
    return-void
.end method

.method private constructor <init>(Lio/realm/c;Lio/realm/internal/TableQuery;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/t;->d:Lio/realm/internal/TableOrView;

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/t;->e:J

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/t;->i:Z

    .line 116
    iput-object p1, p0, Lio/realm/t;->a:Lio/realm/c;

    .line 117
    iput-object p2, p0, Lio/realm/t;->f:Lio/realm/internal/TableQuery;

    .line 118
    iput-object p3, p0, Lio/realm/t;->c:Ljava/lang/String;

    .line 119
    return-void
.end method

.method private constructor <init>(Lio/realm/c;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 74
    iput-object v2, p0, Lio/realm/t;->d:Lio/realm/internal/TableOrView;

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/t;->e:J

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/t;->i:Z

    .line 132
    iput-object p1, p0, Lio/realm/t;->a:Lio/realm/c;

    .line 133
    iput-object p2, p0, Lio/realm/t;->c:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lio/realm/t;->h:Ljava/util/concurrent/Future;

    .line 136
    iput-object v2, p0, Lio/realm/t;->f:Lio/realm/internal/TableQuery;

    .line 137
    return-void
.end method

.method static synthetic a(Lio/realm/t;)Lio/realm/internal/TableOrView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lio/realm/t;->d:Lio/realm/internal/TableOrView;

    return-object v0
.end method

.method static a(Lio/realm/c;Lio/realm/internal/TableOrView;Ljava/lang/Class;)Lio/realm/t;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/q;",
            ">(",
            "Lio/realm/c;",
            "Lio/realm/internal/TableOrView;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lio/realm/t",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lio/realm/t;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/t;-><init>(Lio/realm/c;Lio/realm/internal/TableOrView;Ljava/lang/Class;)V

    .line 91
    iget-object v1, p0, Lio/realm/c;->i:Lio/realm/h;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lio/realm/c;->i:Lio/realm/h;

    invoke-virtual {v1, v0}, Lio/realm/h;->a(Lio/realm/t;)V

    .line 94
    :cond_0
    return-object v0
.end method

.method static a(Lio/realm/c;Lio/realm/internal/TableOrView;Ljava/lang/String;)Lio/realm/t;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/c;",
            "Lio/realm/internal/TableOrView;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/t",
            "<",
            "Lio/realm/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lio/realm/t;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/t;-><init>(Lio/realm/c;Lio/realm/internal/TableOrView;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lio/realm/c;->i:Lio/realm/h;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lio/realm/c;->i:Lio/realm/h;

    invoke-virtual {v1, v0}, Lio/realm/h;->a(Lio/realm/t;)V

    .line 106
    :cond_0
    return-object v0
.end method

.method static a(Lio/realm/c;Lio/realm/internal/TableQuery;Ljava/lang/Class;)Lio/realm/t;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/q;",
            ">(",
            "Lio/realm/c;",
            "Lio/realm/internal/TableQuery;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lio/realm/t",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lio/realm/t;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/t;-><init>(Lio/realm/c;Lio/realm/internal/TableQuery;Ljava/lang/Class;)V

    return-object v0
.end method

.method static a(Lio/realm/c;Lio/realm/internal/TableQuery;Ljava/lang/String;)Lio/realm/t;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/c;",
            "Lio/realm/internal/TableQuery;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/t",
            "<",
            "Lio/realm/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lio/realm/t;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/t;-><init>(Lio/realm/c;Lio/realm/internal/TableQuery;Ljava/lang/String;)V

    return-object v0
.end method

.method private e()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 870
    :try_start_0
    iget-object v0, p0, Lio/realm/t;->h:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 874
    iget-object v0, p0, Lio/realm/t;->f:Lio/realm/internal/TableQuery;

    iget-object v4, p0, Lio/realm/t;->a:Lio/realm/c;

    iget-object v4, v4, Lio/realm/c;->e:Lio/realm/internal/l;

    invoke-virtual {v4}, Lio/realm/internal/l;->i()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->a(JJ)Lio/realm/internal/TableView;

    move-result-object v0

    iput-object v0, p0, Lio/realm/t;->d:Lio/realm/internal/TableOrView;

    .line 875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/t;->i:Z

    .line 876
    invoke-virtual {p0}, Lio/realm/t;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 881
    :goto_0
    return v0

    .line 877
    :catch_0
    move-exception v0

    .line 878
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/a/b;->a(Ljava/lang/String;)V

    .line 879
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Lio/realm/internal/TableOrView;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lio/realm/t;->d:Lio/realm/internal/TableOrView;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lio/realm/t;->a:Lio/realm/c;

    iget-object v0, v0, Lio/realm/c;->g:Lio/realm/u;

    iget-object v1, p0, Lio/realm/t;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lio/realm/u;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/t;->d:Lio/realm/internal/TableOrView;

    goto :goto_0
.end method

.method public a(I)Lio/realm/q;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lio/realm/t;->a:Lio/realm/c;

    invoke-virtual {v0}, Lio/realm/c;->f()V

    .line 205
    invoke-virtual {p0}, Lio/realm/t;->a()Lio/realm/internal/TableOrView;

    move-result-object v0

    .line 206
    instance-of v1, v0, Lio/realm/internal/TableView;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lio/realm/t;->a:Lio/realm/c;

    iget-object v2, p0, Lio/realm/t;->b:Ljava/lang/Class;

    iget-object v3, p0, Lio/realm/t;->c:Ljava/lang/String;

    check-cast v0, Lio/realm/internal/TableView;

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/TableView;->a(J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/c;->a(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/q;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 209
    :cond_0
    iget-object v0, p0, Lio/realm/t;->a:Lio/realm/c;

    iget-object v1, p0, Lio/realm/t;->b:Ljava/lang/Class;

    iget-object v2, p0, Lio/realm/t;->c:Ljava/lang/String;

    int-to-long v4, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Lio/realm/c;->a(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/q;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILio/realm/q;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 670
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method a(J)V
    .locals 5
    .parameter

    .prologue
    .line 807
    :try_start_0
    iget-object v0, p0, Lio/realm/t;->f:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/t;->a:Lio/realm/c;

    iget-object v1, v1, Lio/realm/c;->e:Lio/realm/internal/l;

    invoke-virtual {v1}, Lio/realm/internal/l;->i()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lio/realm/internal/TableQuery;->a(JJ)Lio/realm/internal/TableView;

    move-result-object v0

    iput-object v0, p0, Lio/realm/t;->d:Lio/realm/internal/TableOrView;

    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/t;->i:Z
    :try_end_0
    .catch Lio/realm/internal/async/BadVersionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    return-void

    .line 809
    :catch_0
    move-exception v0

    .line 810
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Caller and Worker Realm should have been at the same version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lio/realm/m;)V
    .locals 2
    .parameter

    .prologue
    .line 890
    if-nez p1, :cond_0

    .line 891
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_0
    iget-object v0, p0, Lio/realm/t;->a:Lio/realm/c;

    invoke-virtual {v0}, Lio/realm/c;->f()V

    .line 894
    iget-object v0, p0, Lio/realm/t;->a:Lio/realm/c;

    iget-object v0, v0, Lio/realm/c;->h:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 895
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t register a listener from a non-Looper thread "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_1
    iget-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 898
    iget-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    :cond_2
    return-void
.end method

.method a(Ljava/util/concurrent/Future;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 821
    iput-object p1, p0, Lio/realm/t;->h:Ljava/util/concurrent/Future;

    .line 822
    invoke-virtual {p0}, Lio/realm/t;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-direct {p0}, Lio/realm/t;->e()Z

    .line 828
    :cond_0
    return-void
.end method

.method public a(Lio/realm/q;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 664
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    check-cast p2, Lio/realm/q;

    invoke-virtual {p0, p1, p2}, Lio/realm/t;->a(ILio/realm/q;)V

    return-void
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    check-cast p1, Lio/realm/q;

    invoke-virtual {p0, p1}, Lio/realm/t;->a(Lio/realm/q;)Z

    move-result v0

    return v0
.end method

.method public b(I)Lio/realm/q;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lio/realm/t;->a:Lio/realm/c;

    invoke-virtual {v0}, Lio/realm/c;->f()V

    .line 629
    invoke-virtual {p0}, Lio/realm/t;->a()Lio/realm/internal/TableOrView;

    move-result-object v0

    .line 630
    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lio/realm/internal/TableOrView;->d(J)V

    .line 631
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lio/realm/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/s",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lio/realm/t;->a:Lio/realm/c;

    invoke-virtual {v0}, Lio/realm/c;->f()V

    .line 172
    invoke-static {p0}, Lio/realm/s;->a(Lio/realm/t;)Lio/realm/s;

    move-result-object v0

    return-object v0
.end method

.method public b(Lio/realm/m;)V
    .locals 2
    .parameter

    .prologue
    .line 908
    if-nez p1, :cond_0

    .line 909
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_0
    iget-object v0, p0, Lio/realm/t;->a:Lio/realm/c;

    invoke-virtual {v0}, Lio/realm/c;->f()V

    .line 912
    iget-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 913
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lio/realm/t;->a:Lio/realm/c;

    invoke-virtual {v0}, Lio/realm/c;->f()V

    .line 841
    iget-object v0, p0, Lio/realm/t;->h:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/realm/t;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lio/realm/t;->a:Lio/realm/c;

    invoke-virtual {v0}, Lio/realm/c;->f()V

    .line 655
    invoke-virtual {p0}, Lio/realm/t;->a()Lio/realm/internal/TableOrView;

    move-result-object v0

    .line 656
    invoke-interface {v0}, Lio/realm/internal/TableOrView;->b()V

    .line 657
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 184
    .line 185
    invoke-virtual {p0}, Lio/realm/t;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lio/realm/q;

    if-eqz v1, :cond_0

    .line 186
    check-cast p1, Lio/realm/q;

    .line 187
    iget-object v1, p1, Lio/realm/q;->f:Lio/realm/internal/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/realm/t;->a:Lio/realm/c;

    invoke-virtual {v1}, Lio/realm/c;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lio/realm/q;->g:Lio/realm/c;

    invoke-virtual {v2}, Lio/realm/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lio/realm/q;->f:Lio/realm/internal/k;

    sget-object v2, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    if-eq v1, v2, :cond_0

    .line 188
    iget-object v1, p0, Lio/realm/t;->d:Lio/realm/internal/TableOrView;

    iget-object v2, p1, Lio/realm/q;->f:Lio/realm/internal/k;

    invoke-interface {v2}, Lio/realm/internal/k;->getIndex()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/internal/TableOrView;->l(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 191
    :cond_0
    return v0
.end method

.method d()V
    .locals 4

    .prologue
    .line 964
    iget-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 967
    iget-object v0, p0, Lio/realm/t;->h:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/realm/t;->i:Z

    if-nez v0, :cond_1

    .line 976
    :cond_0
    return-void

    .line 968
    :cond_1
    iget-object v0, p0, Lio/realm/t;->d:Lio/realm/internal/TableOrView;

    invoke-interface {v0}, Lio/realm/internal/TableOrView;->l()J

    move-result-wide v0

    .line 969
    iget-wide v2, p0, Lio/realm/t;->e:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 970
    iput-wide v0, p0, Lio/realm/t;->e:J

    .line 971
    iget-object v0, p0, Lio/realm/t;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/m;

    .line 972
    invoke-interface {v0}, Lio/realm/m;->a()V

    goto :goto_0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lio/realm/t;->a(I)Lio/realm/q;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 222
    new-instance v0, Ljava/lang/NoSuchMethodError;

    const-string v1, "indexOf is not supported on RealmResults"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0}, Lio/realm/t;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/realm/t$a;

    invoke-direct {v0, p0}, Lio/realm/t$a;-><init>(Lio/realm/t;)V

    goto :goto_0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Lio/realm/t;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/realm/t$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/realm/t$b;-><init>(Lio/realm/t;I)V

    goto :goto_0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0}, Lio/realm/t;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/realm/t$b;

    invoke-direct {v0, p0, p1}, Lio/realm/t$b;-><init>(Lio/realm/t;I)V

    goto :goto_0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lio/realm/t;->b(I)Lio/realm/q;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 412
    invoke-virtual {p0}, Lio/realm/t;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    const/4 v0, 0x0

    .line 416
    :goto_0
    return v0

    .line 415
    :cond_0
    invoke-virtual {p0}, Lio/realm/t;->a()Lio/realm/internal/TableOrView;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/TableOrView;->a()J

    move-result-wide v0

    .line 416
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method
