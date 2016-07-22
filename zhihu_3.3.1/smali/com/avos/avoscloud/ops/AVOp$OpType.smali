.class public final enum Lcom/avos/avoscloud/ops/AVOp$OpType;
.super Ljava/lang/Enum;
.source "AVOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/ops/AVOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avos/avoscloud/ops/AVOp$OpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/ops/AVOp$OpType;

.field public static final enum Add:Lcom/avos/avoscloud/ops/AVOp$OpType;

.field public static final enum AddRelation:Lcom/avos/avoscloud/ops/AVOp$OpType;

.field public static final enum AddUnique:Lcom/avos/avoscloud/ops/AVOp$OpType;

.field public static final enum Compound:Lcom/avos/avoscloud/ops/AVOp$OpType;

.field public static final enum Delete:Lcom/avos/avoscloud/ops/AVOp$OpType;

.field public static final enum Increment:Lcom/avos/avoscloud/ops/AVOp$OpType;

.field public static final enum Null:Lcom/avos/avoscloud/ops/AVOp$OpType;

.field public static final enum Remove:Lcom/avos/avoscloud/ops/AVOp$OpType;

.field public static final enum RemoveRelation:Lcom/avos/avoscloud/ops/AVOp$OpType;

.field public static final enum Set:Lcom/avos/avoscloud/ops/AVOp$OpType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/avos/avoscloud/ops/AVOp$OpType;

    const-string v1, "Set"

    invoke-direct {v0, v1, v3}, Lcom/avos/avoscloud/ops/AVOp$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->Set:Lcom/avos/avoscloud/ops/AVOp$OpType;

    new-instance v0, Lcom/avos/avoscloud/ops/AVOp$OpType;

    const-string v1, "Increment"

    invoke-direct {v0, v1, v4}, Lcom/avos/avoscloud/ops/AVOp$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->Increment:Lcom/avos/avoscloud/ops/AVOp$OpType;

    new-instance v0, Lcom/avos/avoscloud/ops/AVOp$OpType;

    const-string v1, "AddUnique"

    invoke-direct {v0, v1, v5}, Lcom/avos/avoscloud/ops/AVOp$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->AddUnique:Lcom/avos/avoscloud/ops/AVOp$OpType;

    new-instance v0, Lcom/avos/avoscloud/ops/AVOp$OpType;

    const-string v1, "Add"

    invoke-direct {v0, v1, v6}, Lcom/avos/avoscloud/ops/AVOp$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->Add:Lcom/avos/avoscloud/ops/AVOp$OpType;

    new-instance v0, Lcom/avos/avoscloud/ops/AVOp$OpType;

    const-string v1, "Remove"

    invoke-direct {v0, v1, v7}, Lcom/avos/avoscloud/ops/AVOp$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->Remove:Lcom/avos/avoscloud/ops/AVOp$OpType;

    new-instance v0, Lcom/avos/avoscloud/ops/AVOp$OpType;

    const-string v1, "AddRelation"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/AVOp$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->AddRelation:Lcom/avos/avoscloud/ops/AVOp$OpType;

    new-instance v0, Lcom/avos/avoscloud/ops/AVOp$OpType;

    const-string v1, "RemoveRelation"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/AVOp$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->RemoveRelation:Lcom/avos/avoscloud/ops/AVOp$OpType;

    new-instance v0, Lcom/avos/avoscloud/ops/AVOp$OpType;

    const-string v1, "Delete"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/AVOp$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->Delete:Lcom/avos/avoscloud/ops/AVOp$OpType;

    new-instance v0, Lcom/avos/avoscloud/ops/AVOp$OpType;

    const-string v1, "Null"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/AVOp$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->Null:Lcom/avos/avoscloud/ops/AVOp$OpType;

    new-instance v0, Lcom/avos/avoscloud/ops/AVOp$OpType;

    const-string v1, "Compound"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/AVOp$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->Compound:Lcom/avos/avoscloud/ops/AVOp$OpType;

    .line 15
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/avos/avoscloud/ops/AVOp$OpType;

    sget-object v1, Lcom/avos/avoscloud/ops/AVOp$OpType;->Set:Lcom/avos/avoscloud/ops/AVOp$OpType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/ops/AVOp$OpType;->Increment:Lcom/avos/avoscloud/ops/AVOp$OpType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/ops/AVOp$OpType;->AddUnique:Lcom/avos/avoscloud/ops/AVOp$OpType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avos/avoscloud/ops/AVOp$OpType;->Add:Lcom/avos/avoscloud/ops/AVOp$OpType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avos/avoscloud/ops/AVOp$OpType;->Remove:Lcom/avos/avoscloud/ops/AVOp$OpType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avos/avoscloud/ops/AVOp$OpType;->AddRelation:Lcom/avos/avoscloud/ops/AVOp$OpType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avos/avoscloud/ops/AVOp$OpType;->RemoveRelation:Lcom/avos/avoscloud/ops/AVOp$OpType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avos/avoscloud/ops/AVOp$OpType;->Delete:Lcom/avos/avoscloud/ops/AVOp$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avos/avoscloud/ops/AVOp$OpType;->Null:Lcom/avos/avoscloud/ops/AVOp$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avos/avoscloud/ops/AVOp$OpType;->Compound:Lcom/avos/avoscloud/ops/AVOp$OpType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->$VALUES:[Lcom/avos/avoscloud/ops/AVOp$OpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/ops/AVOp$OpType;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp$OpType;

    return-object v0
.end method

.method public static values()[Lcom/avos/avoscloud/ops/AVOp$OpType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->$VALUES:[Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/ops/AVOp$OpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/ops/AVOp$OpType;

    return-object v0
.end method
