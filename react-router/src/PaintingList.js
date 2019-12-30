import React from 'react';
import DeleteablePainting from './DeleteablePainting';
import PaintingShow from './PaintingShow';
import Painting from './Painting';
import artworks from './artworks';
import {Switch, Route }from 'react-router-dom';

class PaintingList extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      paintings: artworks
    };

    this.handleVote = this.handleVote.bind(this);
  }

  handleVote(id) {
    this.setState(prevState => {
      return {
        paintings: prevState.paintings.map(p => {
          if (p.id !== id) {
            return p;
          } else {
            return { ...p, votes: p.votes + 1 };
          }
        })
      };
    });
  }

  render() {
    const allPaintings = this.state.paintings.map(p => (
      <DeleteablePainting
        key={p.id}
        painting={p}
        handleVote={this.handleVote}
      />
    ));
    return (
        <div>
          <h1>All Paintings</h1>
          <Switch>
             <Route path="/paintings/:paintingId" render={(routeParams) => {
               const id = routeParams.match.params.paintingId
               const painting = this.state.paintings.find(p => p.id === parseInt(id)) 
                return <PaintingShow painting={painting} />
             }} />
            <Route path="/" render={() => {
              return <div className="ui items">{allPaintings}</div>
            }}/>
          </Switch>
        </div>
    );
  }
}
export default PaintingList;












