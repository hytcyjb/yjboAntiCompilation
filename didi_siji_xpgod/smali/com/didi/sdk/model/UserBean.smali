.class public Lcom/didi/sdk/model/UserBean;
.super Ljava/lang/Object;
.source "UserBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x56cb386678726214L


# instance fields
.field private mLoginTime:J

.field private mPhoneNumber:Ljava/lang/String;

.field private mTicket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/sdk/model/UserBean;->mPhoneNumber:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/sdk/model/UserBean;->mTicket:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "phoneNumber"
    .parameter "ticket"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/sdk/model/UserBean;->mPhoneNumber:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/sdk/model/UserBean;->mTicket:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/didi/sdk/model/UserBean;->mPhoneNumber:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/didi/sdk/model/UserBean;->mTicket:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getLoginTime()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/didi/sdk/model/UserBean;->mLoginTime:J

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/didi/sdk/model/UserBean;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/didi/sdk/model/UserBean;->mTicket:Ljava/lang/String;

    return-object v0
.end method

.method public setLoginTime(J)V
    .locals 0
    .parameter "loginTime"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/didi/sdk/model/UserBean;->mLoginTime:J

    .line 43
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/didi/sdk/model/UserBean;->mPhoneNumber:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0
    .parameter "ticket"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/didi/sdk/model/UserBean;->mTicket:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserBean{mPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/sdk/model/UserBean;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTicket=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/sdk/model/UserBean;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLoginTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/sdk/model/UserBean;->getLoginTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
