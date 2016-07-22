.class public Lcom/ddtaxi/a/a/ig;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lcom/ddtaxi/a/a/ih;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/ig;->a:Z

    sget-object v0, Lcom/ddtaxi/a/a/ih;->a:Lcom/ddtaxi/a/a/ih;

    iput-object v0, p0, Lcom/ddtaxi/a/a/ig;->b:Lcom/ddtaxi/a/a/ih;

    return-void
.end method


# virtual methods
.method public a()Lcom/ddtaxi/a/a/if;
    .locals 4

    new-instance v0, Lcom/ddtaxi/a/a/if;

    iget-boolean v1, p0, Lcom/ddtaxi/a/a/ig;->a:Z

    iget-object v2, p0, Lcom/ddtaxi/a/a/ig;->b:Lcom/ddtaxi/a/a/ih;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ddtaxi/a/a/if;-><init>(ZLcom/ddtaxi/a/a/ih;Lcom/ddtaxi/a/a/if;)V

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/ih;)Lcom/ddtaxi/a/a/ig;
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/ig;->b:Lcom/ddtaxi/a/a/ih;

    return-object p0
.end method
