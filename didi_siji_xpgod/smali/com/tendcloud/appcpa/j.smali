.class public Lcom/tendcloud/appcpa/j;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/appcpa/j;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/tendcloud/appcpa/j;->c:Ljava/lang/String;

    iput p3, p0, Lcom/tendcloud/appcpa/j;->b:I

    iput-object p4, p0, Lcom/tendcloud/appcpa/j;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/tendcloud/appcpa/j;->e:Ljava/lang/String;

    return-void
.end method
